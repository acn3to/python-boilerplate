"""
This module defines a simple Flask application with Redis caching.
"""

import time
import redis
from flask import Flask

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)


def get_hit_count():
    """
    Retrieve the hit count from Redis cache.

    Returns:
        int: The current hit count.
    """
    retries = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)


@app.route('/')
def hello():
    """
    Handle the root route request.

    Returns:
        str: A greeting message with the current hit count.
    """
    count = get_hit_count()
    return f'Hello World! I have been seen {count} times.\n'

import unittest
from unittest.mock import patch
from src.app import app


class TestFlaskApp(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

    @patch('src.app.cache.incr')
    def test_hello(self, mock_incr):
        mock_incr.return_value = 1
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'Hello World! I have been seen 1 times.', response.data)


if __name__ == '__main__':
    unittest.main()

# Ducksboard Travis

Ducksboard Travis lets you connect your Travis CI builds to your Ducksboard dashboards.

## Usage

1. Create an "Image with a Caption" widget on Ducksboard
2. Give it a good URL like "travis-status"
3. Add this to your .travis.yml

    ```yaml
    notifications:
      webhooks:
        - https://ducksboard-travis.herokuapp.com/YOUR_API_KEY/YOUR_WIDGET_NAME
    ```

4. You're done!

## License

Copyright (c) 2012 [Divshot, Inc.](http://divshot.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
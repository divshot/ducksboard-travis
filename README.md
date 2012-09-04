Ducksboard Travis
=================                                                                                     

Ducksboard Travis lets you connect your Travis CI builds to your Ducksboard dashboards.

Usage
-----

1. Create an "Image with a Caption" widget on Ducksboard
2. Give it a good URL like "travis-status"
3. Add this to your .travis.yml

    ```yaml
    notifications:
      webhooks:
        - http://travis-status:YOUR_DUCKSBOARD_API_KEY@ducksboard-travis.herokuapp.com/
    ```

4. You're done!
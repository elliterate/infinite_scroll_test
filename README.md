## Installation

1. Download the application.
2. Create and use a new RVM gemset.
3. Install bundler: `gem install bundler`
4. Bundle the remaining gems: `bundle install`

## Testing

1. Boot the app: `script/rails server`
2. Visit the homepage in your browser: [http://localhost:3000/](http://localhost:3000/)
3. Click the "Next 2" link.  Verify that two more articles appear and the "Next 2" link remains at the bottom of the page.
4. Click the "Next 2" link a second time.  Verify that two more articles appear but the "Next 2" link disappears from the page.
5. Edit the file `app/views/articles/index.html.haml`.  Uncomment the `loadingMsgRevealSpeed` configuration option.
6. Refresh the homepage.
7. Repeat steps 2 and 3, verifying that the "Next 2" link no longer disappears.

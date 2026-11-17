# Flutter Social Media Laboratory

Uses the supplied DemoAuth and four social_media files from the activity, with supporting Login, Register, Home, Calculator, Profile, and MainScreen screens.

## Run

With Flutter installed, open a terminal in this folder:

```sh
flutter create --platforms android,web .
flutter pub get
flutter run -d chrome
```

The create command generates platform files if they are missing. For Android network images, add `<uses-permission android:name="android.permission.INTERNET" />` directly inside the manifest element in android/app/src/main/AndroidManifest.xml.

Default login: **admin / admin123**. Registration stores one account in memory. Restarting the app clears accounts and feed interactions. HTTP URLs pass the provided validation, but HTTPS images are recommended because platforms can block insecure network requests.

## Activity checks

Verify login, sample posts, empty-field validation, invalid URL rejection, new posts using the current username, like/unlike, nonempty comments, ignored blank comments, likes after inserting posts, tab switching, and registration/logout. Runtime checks have not been recorded as passed without running them.

## Code tracing

| Action | What happens |
| --- | --- |
| DemoAuth.login() | Checks admin or the registered account, saves currentUsername on success, and returns a boolean. |
| openCreatePostSheet() | Opens the modal form and waits for a Post result. |
| Navigator.pop(context, newPost) | Closes the form and returns the new Post. |
| posts.insert(0, newPost) | Inserts the post at the beginning; setState rebuilds the feed. |
| isLiked = !isLiked | Toggles the card's liked state. |
| comments.add(comment) | Adds the nonempty comment; setState refreshes the list and count. |

For submission, add your name/course/section, actual screenshots, completed testing table, and tracing table to Google Docs; export as PDF and submit alongside your GitHub repository link as instructed.

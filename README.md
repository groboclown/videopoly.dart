# videopoly.dart

Polymer custom element for embedding different video players into your Dart project.

## Embedding a video

To embed a video in your Dart page, you need to add the `videopoly.dart`
project into your project's `pubspec.yaml` file:

    dependencies:
        videopoly: ">=0.1.1 <0.2.0"

Install the package

    pub get

Then import it in your Polymer html, and use the `<video-player>` tag to
embed the video.

    ```html
    <html>
      <head>
        ...
        <link rel="import" href="packages/videopoly/video_player.html">
        ...
      </head>
      <body>
      
          <video-player
              provider="youtube"
              video="tlcWiP7OLFI"
          ></video-player>
      
      </body>
    </html>
    ```

The tag supports these attributes:

* `provider` - the video player provider.  The set of providers is defined
  by the underlying
  [videoplay.dart](https://github.com/groboclown/videoplay.dart)
  library.  Version 0.2.0 allows for:
    * `youtube` - a YouTube video
    * `html5` - an HTML 5 compatible video
    * `vimeo` - a Vimeo video
    * `twitch` - a Twitch video
* `video` - the video ID, which the provider defines.
* `width` - the video player width.  Defaults to the default size defined by
  the provider
* `height` - the video player height.  Defaults to the default size defined by
  the provider.

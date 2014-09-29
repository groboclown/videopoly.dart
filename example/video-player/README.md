# videopoly.dart example - Directly reference a video

This example shows off how to embed a video by directly referencing the
provider and the video.

The `<video-player>` element allows for referencing any known provider that's
available through the
[videoplay.dart](https://pub.dartlang.org/packages/videoplay)
library.  The provider is specified using the `provider` attribute.
However, it only allows access to the limited, global attributes:

* **width** - the player width
* **height** - the player height
* **video** - the played video ID.  The value expected depends upon the
  selected `provider`.

Note that this uses `<video-player>`.  If you instead use `<video>`, then
you'll be referencing HTML 5 videos directly, with its own usage that's
completely different.


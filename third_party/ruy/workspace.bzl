"""Loads the ruy library, used by TensorFlow Lite."""

load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")

def repo():
    tf_http_archive(
        name = "ruy",
        # LINT.IfChange
        sha256 = "6f7319261f8295f487b913b43a238e2aeba03582628b8a93797a45ffbd68e769",
        strip_prefix = "ruy-cfa3b6f7174f23dce13bc3e64128dfc06ad03dc6",
        urls = tf_mirror_urls("https://github.com/sentiance/ruy/archive/cfa3b6f7174f23dce13bc3e64128dfc06ad03dc6.zip"),
        # LINT.ThenChange(//tensorflow/lite/tools/cmake/modules/ruy.cmake)
        build_file = "//third_party/ruy:BUILD",
    )

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"main.dart.js": "d1fa8e05aa46daa725e06b4703b8d617",
"_redirects": "6a02faf7ea2a9584134ffe15779a0e44",
"assets/FontManifest.json": "8247ae8dd68521deb8e98c579c8be370",
"assets/AssetManifest.bin": "c9eb8ab404c69191a120739e5227ea6e",
"assets/fonts/MaterialIcons-Regular.otf": "9efb10850740655d045a5fc259dbab42",
"assets/packages/iconsax_flutter/fonts/FlutterIconsax.ttf": "83c878235f9c448928034fe5bcba1c8a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "391ff5f9f24097f4f6e4406690a06243",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/assets/fonts/Vazirmatn-Regular.ttf": "e8e9648f5b8fc824da409750ff331221",
"assets/assets/fonts/Ubuntu-Regular.ttf": "84ea7c5c9d2fa40c070ccb901046117d",
"assets/assets/fonts/Ubuntu-Bold.ttf": "896a60219f6157eab096825a0c9348a8",
"assets/assets/fonts/Vazirmatn-Bold.ttf": "4ac4426bc38f337534dfc45b3dbd9283",
"assets/assets/fonts/Ubuntu-Italic.ttf": "9f353a170ad1caeba1782d03dd8656b5",
"assets/assets/images/star_2.png": "93f3e21f194fab83c0fb2208e4ea4ee5",
"assets/assets/images/profile_placeholder.jpg": "2e5027bb2731867b8c2fd1183ea5ac17",
"assets/assets/images/gfonts.png": "fd104fd6f7dd335b72f931fae7407f65",
"assets/assets/images/screenshot.png": "ac53db4caeefdca82732e6dfdf00403b",
"assets/assets/images/star.png": "075e9ba8e1c31fc0a76b98220bab7ac2",
"assets/assets/images/signature.png": "e4dc88ad404aaf9221c591a2c251b235",
"assets/assets/images/works.png": "b56181273826ecda11b9f0ed9b8a30b3",
"assets/assets/icons/ic_phone.svg": "8e5e7554ba1cfacf1a93821310cdaa81",
"assets/assets/icons/ic_telegram.svg": "78fb69ce1ad3e52711014cafd508714b",
"assets/assets/icons/union.svg": "f5ea4efd08227d15458a1668de1b9c4e",
"assets/assets/icons/mobile_dev.svg": "151547df844c28bee6307b64679f0b69",
"assets/assets/icons/arrow_to_right.svg": "d846d0c363fcd030ddfc9b71253f12f2",
"assets/assets/icons/pen.svg": "930dfb25d30e626ecc41c77f5c7264d0",
"assets/assets/icons/ic_github.svg": "6ff20bb119854cbd816167fbe8e3e3c9",
"assets/assets/icons/camera.svg": "c7e6525ca08115d46d841fc81cb12aeb",
"assets/assets/icons/ic_linkdin.svg": "3bfc5948f7d6bd043c929b8045f74cb1",
"assets/assets/icons/ic_location.svg": "aa6320f6806915a04dfab55fb7c67cef",
"assets/assets/icons/ic_email.svg": "1d45aa1fb7986f052734d0f45220779d",
"assets/NOTICES": "e1bf03c6b2875022cd10795d05a65313",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "f657427a13377ad4688329fe7d5025db",
"assets/AssetManifest.bin.json": "c90915771a679813d0ed555021c0c475",
"config/browserconfig.xml": "4569b60071d986fbd64f9a830d433f32",
"index.html": "fedbae36656c90fab250e8ed274ee8ac",
"/": "fedbae36656c90fab250e8ed274ee8ac",
"manifest.json": "c3b64ebd9f02aa2f54d6451bf4e961e6",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.ico": "7defcd32c51840edb82840d54b1701b2",
"nginx.conf": "9a4ee9891d251581ecbbbc2272774daa",
"styles/styles.css": "8e166c391a2698f176a27922098f05ef",
"icons/ms-icon-144x144.png": "8dca0f5f51ccb62b7a978837bba0b38f",
"icons/android-icon-72x72.png": "6080584325bf8416863d00ff894ee34f",
"icons/android-icon-36x36.png": "f1587297e4b6de56256ea762f9b0d413",
"icons/apple-icon-57x57.png": "da1879d3f1015a5d2eda961ef9fcf288",
"icons/apple-icon-76x76.png": "9dc569f66d951012368081e27521fa35",
"icons/apple-icon-180x180.png": "65b1d012be50baf4a4c2fe012dc315bd",
"icons/favicon-16x16.png": "1b952cf33a1a440f61b77caf42b54015",
"icons/apple-icon-120x120.png": "9be1cff65ead4f423e55158054411640",
"icons/apple-icon-144x144.png": "8dca0f5f51ccb62b7a978837bba0b38f",
"icons/apple-icon-114x114.png": "10a16e6069dfa45cdb0005c4fc790fd8",
"icons/apple-icon-72x72.png": "6080584325bf8416863d00ff894ee34f",
"icons/apple-icon-precomposed.png": "9c3a6f7d45f952b7c2ddb74dc7ac28cd",
"icons/apple-icon.png": "9c3a6f7d45f952b7c2ddb74dc7ac28cd",
"icons/ms-icon-150x150.png": "c56ae5d323573f026a004e2de795fac3",
"icons/android-icon-96x96.png": "52265f0b20ffcd0d95fd5f5cda54c276",
"icons/android-icon-192x192.png": "757cbae941a8dcebe35d370f7244f679",
"icons/favicon-32x32.png": "7f751d9f1b4f1de8b37c0601d2952151",
"icons/android-icon-48x48.png": "3f3330c45b4d74c83df48067ae600e0a",
"icons/apple-icon-60x60.png": "d826e486f3f58a4861556e61f89202c1",
"icons/ms-icon-310x310.png": "95fd32e64318c3a38d0fc9631abba6a3",
"icons/android-icon-144x144.png": "8dca0f5f51ccb62b7a978837bba0b38f",
"icons/apple-icon-152x152.png": "25455cc02226c3b6526693f4a4ec74e9",
"icons/ms-icon-70x70.png": "fe76bf494473d96ef29f2d01e813fa98",
"icons/favicon-96x96.png": "52265f0b20ffcd0d95fd5f5cda54c276",
"404.html": "ad36ac4a748138b1f309813a2f778aa0",
"version.json": "17d91ea3e77f9e1abfa89673a11190f0",
"flutter_bootstrap.js": "9658ff872a61a485cbc9c93b7f770942"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

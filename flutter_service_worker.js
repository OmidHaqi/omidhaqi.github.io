'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "2966c427cbb73430a6db57f81f901331",
"_redirects": "6a02faf7ea2a9584134ffe15779a0e44",
"nginx.conf": "9a4ee9891d251581ecbbbc2272774daa",
"icons/ms-icon-310x310.png": "afebc91dbc934c0e6d1ce502c86b3b15",
"icons/apple-icon-72x72.png": "ee8ea68def3d4ee3d0032e9cf8dbae59",
"icons/apple-icon-180x180.png": "9a48a72070c5363df22ccf55dbbd4a4f",
"icons/ms-icon-70x70.png": "fc21817b656548f88e57994aef02fa8e",
"icons/apple-icon-60x60.png": "c21e7d3b4e5eacbf58ee81b7078c08ea",
"icons/favicon-16x16.png": "02e005f9e70a590138c2fa2a4d4467e4",
"icons/favicon-96x96.png": "c25539764ecf55376bcf933d5c754039",
"icons/apple-icon-precomposed.png": "abbd6e40210b31de28e6cc07862c96a2",
"icons/android-icon-144x144.png": "114e359b2efba4aef8cfa082cc759b9f",
"icons/apple-icon-120x120.png": "5e958bdae43a2d891a06cb2a33c96ea3",
"icons/ms-icon-144x144.png": "114e359b2efba4aef8cfa082cc759b9f",
"icons/android-icon-192x192.png": "100da1f1b78877adfee4b7fc3f2a6d65",
"icons/android-icon-72x72.png": "ee8ea68def3d4ee3d0032e9cf8dbae59",
"icons/apple-icon-144x144.png": "114e359b2efba4aef8cfa082cc759b9f",
"icons/android-icon-96x96.png": "c25539764ecf55376bcf933d5c754039",
"icons/android-icon-48x48.png": "39bbc0ccfafd16a8d2de94fa3554ce91",
"icons/apple-icon-152x152.png": "18104d53744f833e627fc32d50a68cd6",
"icons/favicon-32x32.png": "5827605e9503fe96b9e99ef6994d2138",
"icons/ms-icon-150x150.png": "25526e62f868913cc330ac75c6f924a4",
"icons/apple-icon-114x114.png": "4cb9c97269c4cbadf4f6948d0ec022ad",
"icons/apple-icon-57x57.png": "9dc1dbd232ca5bf784d2d80c02175808",
"icons/apple-icon-76x76.png": "72dcd2e738724950399109a482bc3314",
"icons/android-icon-36x36.png": "a4457fa5e7a3c7f616230e5a23e0e95b",
"icons/apple-icon.png": "abbd6e40210b31de28e6cc07862c96a2",
"main.dart.js": "5e67c770d45a595ba4de4e94019edffc",
"assets/NOTICES": "58a20ac719e7ca3bd821ec833b29d956",
"assets/AssetManifest.json": "54ccd7d1cbb2998b21347d1b4c29e8ca",
"assets/assets/images/gfonts.png": "fd104fd6f7dd335b72f931fae7407f65",
"assets/assets/images/signature.png": "e4dc88ad404aaf9221c591a2c251b235",
"assets/assets/images/price.png": "7bceed3537f5f61116704bf9cc7df968",
"assets/assets/images/star_2.png": "93f3e21f194fab83c0fb2208e4ea4ee5",
"assets/assets/images/star.png": "075e9ba8e1c31fc0a76b98220bab7ac2",
"assets/assets/images/profile_placeholder.jpg": "2e5027bb2731867b8c2fd1183ea5ac17",
"assets/assets/images/works.png": "212978dcc1e232216a71ab5762267491",
"assets/assets/images/logo.png": "9bdedd8706afff44f2c89c24956199c3",
"assets/assets/icons/ic_location.svg": "aa6320f6806915a04dfab55fb7c67cef",
"assets/assets/icons/union.svg": "f5ea4efd08227d15458a1668de1b9c4e",
"assets/assets/icons/ic_github.svg": "6ff20bb119854cbd816167fbe8e3e3c9",
"assets/assets/icons/ic_phone.svg": "8e5e7554ba1cfacf1a93821310cdaa81",
"assets/assets/icons/pen.svg": "930dfb25d30e626ecc41c77f5c7264d0",
"assets/assets/icons/mobile_dev.svg": "151547df844c28bee6307b64679f0b69",
"assets/assets/icons/ic_telegram.svg": "78fb69ce1ad3e52711014cafd508714b",
"assets/assets/icons/arrow_to_left.svg": "95b8631e5d1ab107fb8afcbf7e6d774e",
"assets/assets/icons/camera.svg": "c7e6525ca08115d46d841fc81cb12aeb",
"assets/assets/icons/arrow_to_right.svg": "d846d0c363fcd030ddfc9b71253f12f2",
"assets/assets/icons/ic_eita.svg": "bd65955be7e0de0024fa6e064b3d43c6",
"assets/assets/icons/ic_whatsapp.svg": "1cc0c385224b85fd408b61bc0c0337e7",
"assets/assets/icons/ic_linkdin.svg": "3bfc5948f7d6bd043c929b8045f74cb1",
"assets/assets/icons/logo.svg": "efbc95a5877829206084138d206ee37b",
"assets/assets/icons/ic_email.svg": "1d45aa1fb7986f052734d0f45220779d",
"assets/assets/fonts/Vazirmatn-Regular.ttf": "e8e9648f5b8fc824da409750ff331221",
"assets/assets/fonts/Ubuntu-Italic.ttf": "9f353a170ad1caeba1782d03dd8656b5",
"assets/assets/fonts/Ubuntu-Regular.ttf": "84ea7c5c9d2fa40c070ccb901046117d",
"assets/assets/fonts/Ubuntu-Bold.ttf": "896a60219f6157eab096825a0c9348a8",
"assets/assets/fonts/Vazirmatn-Bold.ttf": "4ac4426bc38f337534dfc45b3dbd9283",
"assets/FontManifest.json": "8247ae8dd68521deb8e98c579c8be370",
"assets/AssetManifest.bin": "6866a401dec61fca6fa2e3c542dd6f40",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/packages/iconsax_flutter/fonts/FlutterIconsax.ttf": "83c878235f9c448928034fe5bcba1c8a",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "391ff5f9f24097f4f6e4406690a06243",
"assets/fonts/MaterialIcons-Regular.otf": "7366220a471819e22ef86b02b893d48c",
"assets/AssetManifest.bin.json": "c5430df41ceefa7f897f889cac34c156",
"styles/styles.css": "8e166c391a2698f176a27922098f05ef",
"404.html": "61d050927814ace570b0aa84e4d9d89b",
"manifest.json": "ec1415ee481e744e7ce314981f7c98dd",
"config/browserconfig.xml": "4569b60071d986fbd64f9a830d433f32",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"index.html": "19aed92ffaab603c3cdf6c7dc2cb89a9",
"/": "19aed92ffaab603c3cdf6c7dc2cb89a9",
"version.json": "e539fd2cea5bdf30cc2d75580f04d7b8",
"favicon.ico": "fe7e3282444818bcb41935712f4022f1",
"flutter.js": "4b2350e14c6650ba82871f60906437ea"};
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

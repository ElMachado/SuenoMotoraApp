'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "25ef452532bc6707cc8d7299fa674873",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"splash/img/light-3x.png": "f0734040f1059f0e45f6e00370aade04",
"splash/img/dark-1x.png": "c134d39f09bd9bbd49ddd767fd6079fb",
"splash/img/dark-4x.png": "e32d68388ce334e92cfeed2ef139827c",
"splash/img/light-2x.png": "d752bcef36832923d13f43a6f5771b4b",
"splash/img/light-1x.png": "c134d39f09bd9bbd49ddd767fd6079fb",
"splash/img/dark-2x.png": "d752bcef36832923d13f43a6f5771b4b",
"splash/img/light-4x.png": "e32d68388ce334e92cfeed2ef139827c",
"splash/img/dark-3x.png": "f0734040f1059f0e45f6e00370aade04",
"splash/splash.js": "c6a271349a0cd249bdb6d3c4d12f5dcf",
"splash/style.css": "db6178791b6369b77311c0ae92809585",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"index.html": "2a32b831dd02f0bc8349fbed369f7dac",
"/": "2a32b831dd02f0bc8349fbed369f7dac",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "bf36be42519d209c1a9f0b7aecf5faa1",
"assets/AssetManifest.json": "c7a0ed2befca0d715da5bd4a6e64a2bd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/data/menu_options.json": "21b764b84289c94b9d616a536a6c69f1",
"assets/assets/avatar.jpg": "10af46d56a16b090cf37bec5acaa9984",
"assets/assets/avatar.png": "aa5270c8d4a66c8a1dd4c0df671f3a2a",
"assets/assets/train%2520place%2520holder.gif": "769b2e03837122ab495918407cdb1caf",
"assets/assets/man.png": "f07d66e00150e23a0d8b2e10b7b0f86b",
"assets/assets/librosplaceholder.gif": "0dcf363da379d0d8f3ff39009a787ea0",
"assets/assets/logosuenomotora.png": "2e04291bf2e05f1829d3bdee82949763",
"assets/assets/locomotorafoto.jpg": "3f1b211f6a60ee041e6b4c1c591e751f",
"assets/assets/circle%2520placeholder.gif": "c0962aad1c94edae6d655bd12391e5bd",
"assets/assets/2.jpg": "12bfeb577be8b1cd201c4470ff0a1e36",
"assets/assets/avatar_hombre-02.png": "0cf6e089d9dbabe42c911af1e4195805",
"assets/assets/warning.png": "5c95c41f56d46bed0a7c9662cd033071",
"assets/assets/4.jpg": "77e1ab5215c71b26353b34b211272317",
"assets/assets/1.jpg": "b7d1fd83656819e33a534b931080ba07",
"assets/assets/3.jpg": "a3c3eff74d8d0fd95601ec3c57f82834",
"assets/assets/770137_man_512x512.png": "4288d565db14eb2f3bdb6e2b88f8b0b0",
"assets/assets/computador-janus-celeron-dual-core-4gb-1tb-21-1.jpg": "94c34a7f1661787a33504a3b0d0791bc",
"assets/assets/train2placeholder.gif": "d8be227ccfb580612c557d49dc9614df",
"assets/assets/profile2.png": "14dd3f8307d98b1974110e13a9269160",
"assets/assets/train3placeholder.gif": "0c80c5baaa5b26b5ec10ab3b3013a02d",
"assets/NOTICES": "bd0e6e3f6d51326d4cf0f3417c97cb24",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"manifest.json": "d565d2cd8ab0a412f8481503095569d5",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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

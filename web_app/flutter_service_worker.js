'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9c6ea7d5cce3b2374dd68c8eec88010f",
"assets/AssetManifest.bin.json": "d668ba7b4a006c4a44840c6c62218636",
"assets/AssetManifest.json": "3ec2cb7047e7bb89e654d709313d8b60",
"assets/assets/animated_icons/background.json": "4b454c2fff2332f3a00f00c820523fcf",
"assets/assets/animated_icons/message_send.json": "05a11f3b69045150c85e7d1c051172e7",
"assets/assets/animated_icons/muscle.json": "62311f6d7fc385c7fd43819c10df1005",
"assets/assets/animated_icons/rocket.webp": "174bf224f1df47897e5bbd9d2b2e15e1",
"assets/assets/animated_icons/star.webp": "a5aad81ac31d1b020c2a9c8e8b5a1bac",
"assets/assets/fonts/Rubik-Black.ttf": "2a3b9f77607c7b691e81090c4edba341",
"assets/assets/fonts/Rubik-Bold.ttf": "627d0e537f4a06a535ae956e4a87837f",
"assets/assets/fonts/Rubik-Italic.ttf": "17538a8196fb1d1fab888c5941acf9ec",
"assets/assets/fonts/Rubik-Light.ttf": "86699cab89559b6f5ffd4887cb5c7a7c",
"assets/assets/fonts/Rubik-Medium.ttf": "e785acbf5775e9bec2129f4967a75472",
"assets/assets/fonts/Rubik-Regular.ttf": "46df28800514364ef2766f74386b1bd3",
"assets/assets/images/android.png": "26bf88150e62bc97614b420861d524d0",
"assets/assets/images/avatar.png": "acc44cba9d7cd972496e374fcedb6010",
"assets/assets/projects_icons/awradi.png": "2150b697f1573c23492872e7f6b2c07f",
"assets/assets/projects_icons/chatbot.png": "943c817e2d3d56a6e4be956a869ad4e5",
"assets/assets/projects_icons/hajjwoman.png": "c467785117bf2784cc6de170fdd9bee9",
"assets/assets/projects_icons/meditation_time.png": "5232ee181932d9a339473792fe0b78fc",
"assets/assets/projects_icons/mithqal.jpg": "c6515a5821597d958c092e0e5a915278",
"assets/assets/projects_icons/origo.png": "8da16224b4afa09df78583b2ab784a61",
"assets/assets/projects_icons/zul_cards.png": "a603ceb25721cdea9c84741e7275e209",
"assets/assets/recommendations/review_1.png": "f4233d78e7c1bef96018c75cfd730a09",
"assets/assets/recommendations/review_2.png": "682081626c7f9ff33a29bfc23dec4343",
"assets/assets/recommendations/review_3.png": "7a78c90350f550155750fe6991f4b25f",
"assets/assets/recommendations/review_4.png": "a6a2f373e47180ae9f26e934f4a2cfd2",
"assets/assets/recommendations/review_5.png": "e3fed28c0eb25e617a525f8580a65825",
"assets/assets/recommendations/review_6.png": "e5b8eef00190b2b7a5932ee2f3f1eb60",
"assets/assets/recommendations/review_7.png": "62dc38aab4e92c806137776a9e95cee9",
"assets/assets/skills_icons/api.png": "c1b7b35b93d76471b9a9d7c990fbe555",
"assets/assets/skills_icons/dart.png": "918e7c35823c7ad268ba831c6e7eaa64",
"assets/assets/skills_icons/figma.png": "497f287338586c39043b6a206cf24338",
"assets/assets/skills_icons/firebase.png": "9d249406a1b58a31ef8dabff96e67ffc",
"assets/assets/skills_icons/flutter.png": "6637b6c64481c76692760d0729b9c10a",
"assets/assets/skills_icons/git.png": "5b2255699fcb506b570720cdbc8ade1b",
"assets/FontManifest.json": "563048a98443c5e51f484a06bfde8032",
"assets/fonts/MaterialIcons-Regular.otf": "1deaa712da6c4b36b260ea408be47d2c",
"assets/NOTICES": "a0d08647a02f8c86b0dd346834f6c3e2",
"assets/packages/any_link_preview/lib/assets/giphy.gif": "b0db8189c4cfba8340d61b1e72b1acdc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "45bb3575d8d11ed9aee640213016190b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "74c99f8b0e3e34c3bd275795ed6bf389",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "8caf6b7a360f04d6c9952e532f5a555b",
"icons/Icon-192.png": "06d588e9356a834456c6ea611dcb6b57",
"icons/Icon-512.png": "847fc585b186c8b17ea64369b0dfa64a",
"icons/Icon-maskable-192.png": "06d588e9356a834456c6ea611dcb6b57",
"icons/Icon-maskable-512.png": "847fc585b186c8b17ea64369b0dfa64a",
"index.html": "7b7cbced54619574860a78a4524f222c",
"/": "7b7cbced54619574860a78a4524f222c",
"main.dart.js": "1e705a95612ccabe3e414792cc624684",
"manifest.json": "3c00bfb5fa6c03e5efff656e896ed43c",
"version.json": "009c9e65172e010890f7f65fde438006"};
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

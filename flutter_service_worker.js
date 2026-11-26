'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"404.html": "19cb117d8d8db693055fff2fb6844031",
"assets/AssetManifest.bin": "9f134922bacdb70ca42bd5b8ec85f931",
"assets/AssetManifest.bin.json": "17295fa38392bbe8e3b5677ca91d1aeb",
"assets/AssetManifest.json": "20aae79bc64821c7236b5ce16e7d47d5",
"assets/assets/images/container_ship.png": "b3b8d9b1b46662519a95af4020ecd69e",
"assets/assets/images/guideline1.png": "8f45dca4263ad51c0163e81b6e8111cf",
"assets/assets/images/guideline2.png": "313e8c80263d3253c02bc2ed48817c5d",
"assets/assets/images/inauguration_photo.png": "d0a8ee80911e06a39263082e09e5e67e",
"assets/assets/images/itrustlogo.png": "cf634af8c3fc42737215021ded4ae575",
"assets/assets/images/maritime-cyber.jpg": "d1e98514b01ed78a694ed6e975fffaf5",
"assets/assets/images/na1.png": "bb0888c2e33e00a4669892b24d04296b",
"assets/assets/images/na2.png": "359185fe7b2aff28db5e924db45e45e5",
"assets/assets/images/nafinal.png": "5adf76c620f28bae2fe74ab8e3bb53d6",
"assets/assets/images/net2.png": "1e43f3660fb778231768bd653d543afa",
"assets/assets/images/net3.png": "f70e5be29a82fd663c6b11752abe8430",
"assets/assets/images/networkarchitecturefinal.png": "cc878ee6da7852133500c744a7ee5d7f",
"assets/assets/images/network_architecture.png": "a326f8cd51d6dc04d0ad51f4af999aa8",
"assets/assets/images/onboard-impact.png": "57acc980d48072aa477d2c1bf790fcc5",
"assets/assets/images/pic1.jpeg": "a5e62e513b86d22d2ccb00a0d68ab1d5",
"assets/assets/images/pic1.png": "b9480d6eb4d25fe79f077e9ee34c519a",
"assets/assets/images/qualitative-risk.jpg": "5141962ed7923eed3b06750177a7ce82",
"assets/assets/images/quantitative-risk.jpg": "500156bd938bf11953a9dc6554f40fab",
"assets/assets/images/root-cause.png": "0b838b68034f8817813a2a88a533758e",
"assets/assets/images/sutditrust.png": "341e07941db93c951e415aedb3dd8659",
"assets/assets/images/sutditrust2.png": "1102a5bad11353cd284dfeae620c5e7a",
"assets/assets/images/sutdlogo.png": "d8a8857e12d8a5a1f6ca17d608f19bde",
"assets/assets/images/W1.jpeg": "f1cd29744565f14386fa993f8ad272b4",
"assets/assets/images/W2.jpeg": "b1512947e5e22773dc87a06f22e6b3a0",
"assets/assets/images/W3.jpeg": "8afe704a01b8bd9dd0c95de0d6e99161",
"assets/assets/images/W4.jpeg": "12183ed3faeb893accb0919cd092505b",
"assets/assets/images/W5.jpeg": "13e58047f501f1d2a2bdc357c3c99a5f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "66b6a4b4fd146bfbbef759f8642b6535",
"assets/NOTICES": "07b59fd0a37b8df35a87d5d34c3b5a09",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"booking/index.html": "dbd2ed62854d0d43c14b7c381a88b876",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"contact/index.html": "c8b79d043c3a866d0b157d3216ccaafe",
"datasets/index.html": "ef52e21c1a896b5425d8465368bbdbef",
"demo/index.html": "7bb8bc7ff3a00b2663343cbb603e2779",
"events/index.html": "e3ba951963fd1515b7a50897264a8fdc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "5fe39544360715801ed23e9a259c17e9",
"google55bb35c451476c15.html": "cfedc2ccff3241aa80eb106248608efe",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2968be5db02eab8182363972a2d293fd",
"/": "2968be5db02eab8182363972a2d293fd",
"main.dart.js": "023aca831a487c5025312bd1f47ee0bb",
"manifest.json": "50c4ab8e642531e8aced979bde990402",
"mariot-matrix/index.html": "713ea67c94a0f8955d88462eb954e3da",
"news/index.html": "c4e09e5afa5857f59d266ae704932eb0",
"pdfs/Guidelines-for-Cyber-Risk-Management-in-Autonomous-Shipping_final.pdf": "d3e8b98fc41aca9c0c05edc66d34bce2",
"pdfs/Guidelines-for-Cyber-Risk-Management-in-Shipboard-Operational-Technology-Systems-1st-Ed.pdf": "362dd436913c218a7b04c488fb0687e1",
"projects/index.html": "dcd4ffa18fdb2a52bd6cce5b516e38c4",
"publications/index.html": "f5b68482b484dd8a595733d91e4b6787",
"risk-management/index.html": "4034fcbc53422acfdde70c251f657f5b",
"robots.txt": "28ee4f98aaa1f6a4435e69d47a62448e",
"sitemap.xml": "7e95830f041981e56aa5e838b843d83e",
"testbed/index.html": "09e1a2ff69c3ede575aa82c0ce1536c2",
"version.json": "bb191ab908f65818236a5bbf05a0f508",
"vulnerabilities-and-discovery/index.html": "ffbc314aa09e9f65d2e8610cf329059d"};
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

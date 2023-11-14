'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a4b1daad4e3894ce37a41cd915c585ff",
"assets/AssetManifest.json": "115d815a714c410e1639424b4dae1ea1",
"assets/assets/dummy_image/spa_1.jpeg": "5a3089a138bd79f4828af954ff137215",
"assets/assets/dummy_image/spa_2.jpeg": "4ffda7be50edb4cf63736dce7a617ecb",
"assets/assets/dummy_image/spa_3.jpeg": "113b3e809e7413eb8e91012f7943a14a",
"assets/assets/dummy_image/spa_4.jpeg": "7f1d354f348fd9f900eba2963f384074",
"assets/assets/dummy_image/spa_5.jpeg": "1952e9f3577db8985d57db716bb5a255",
"assets/assets/dummy_image/spa_6.jpeg": "eb657aefce00d435679fce5b7d3457e4",
"assets/assets/dummy_image/spa_8.jpeg": "edd6fac020ee61d9072cfbc37e10e1cf",
"assets/assets/fonts/PlayfairDisplay-Italic-VariableFont_wght.ttf": "7a2b1e55108afc8ac045e60953c6c75e",
"assets/assets/fonts/PlayfairDisplay-VariableFont_wght.ttf": "9262890da570b6e8d1741d0e88138b9c",
"assets/assets/images/about_us_image.png": "4aac1e80ad95a6e30674f43d12a338f3",
"assets/assets/images/app_icon.png": "4823326058f4afe3da51b87a797add87",
"assets/assets/images/banner_image.png": "00361925408d2f34fb8566ac74003f3a",
"assets/assets/images/basket_ball.png": "afd70dcb413126e4afda8f2486f44e13",
"assets/assets/images/clipboard.png": "6b5d5720ebfb5f31dc1178e233e26f50",
"assets/assets/images/cyc.png": "0d2acfba5ca5a926551ea7726397890b",
"assets/assets/images/dog.png": "b8e13cfb66b5f6a9c0b65a6fd2e3a526",
"assets/assets/images/golf.png": "14392cd7e3292daae5236ae88f6cab48",
"assets/assets/images/hammer.png": "b6ebf83db20645bd49e16c65e8261d6d",
"assets/assets/images/ic_spa_logo.jpg": "9252e05a45b803975c9a9074801f6d13",
"assets/assets/images/imagelogin.png": "2a7852bb74dcaa895369376b6fe6319e",
"assets/assets/images/lotus.png": "42320733fba502855a164c73ffca3754",
"assets/assets/images/memo.png": "d52fe912752a12d2e4833c27461577e6",
"assets/assets/images/open_book.png": "66ae871af386853071738c533ee5843e",
"assets/assets/images/run.png": "0c68345abd711c6ed657fccd16c35767",
"assets/assets/images/shower.png": "7dd1adb874bd8f8971a3b7154af06b1e",
"assets/assets/images/spa_location.png": "29f05cf8818a15dd2fcd68821c482864",
"assets/assets/images/sufter.png": "2f30a3082d2e15c24ef92df9ef696c4b",
"assets/assets/images/swim.png": "e225ac1200a49ad7f253c56133bdd670",
"assets/assets/images/weight_lifter.png": "f5e725d86d50341b4b28d500cc4dc054",
"assets/assets/images/wrestling.png": "97abcd8688b3dd0a53e7b6a28876d8c3",
"assets/assets/social_media_icon/ic_fb.png": "b7d1e5c14c4808992b1daca825562b7c",
"assets/assets/social_media_icon/ic_insta.png": "537e1565fcec3b22d8245aed439ab747",
"assets/assets/social_media_icon/ic_x.png": "eb1d2f9382c8483e2a5dfbdee80a0423",
"assets/assets/social_media_icon/ic_yt.png": "ef5e24535cc98e5a7e9d249d3c787fb9",
"assets/assets/svg/ic_add.svg": "c4255c7330b854cd43d55c2cd97469d1",
"assets/assets/svg/ic_add_calender.svg": "46f6873c0e5b310477fc75891a3dc424",
"assets/assets/svg/ic_back_ios.svg": "5db777d53b34b90ae243aafe1cfa1621",
"assets/assets/svg/ic_chart.svg": "8a3cd48f9da92243647a607bb8358684",
"assets/assets/svg/ic_chart_year.svg": "4eed5cd084c27044aff4aca09521e40f",
"assets/assets/svg/ic_check.svg": "e937ec24b3aaab4d1fea3aaca40d0363",
"assets/assets/svg/ic_close.svg": "631cf8b8c18567bbf210e2a5398dfce4",
"assets/assets/svg/ic_close_bg.svg": "f7c8300d0c4a0022e8a7f8ef5ef10741",
"assets/assets/svg/ic_date_picker.svg": "a82b59a69e3e509b15b137c6df38deec",
"assets/assets/svg/ic_drop_down.svg": "badea5ea0adf8223ab9c46a04ddcc004",
"assets/assets/svg/ic_home.svg": "fc18f127e7eb07fde6fe2d5d8137c217",
"assets/assets/svg/ic_hour_glass.svg": "57ce6b93be6345ad68190ed41a1e5a79",
"assets/assets/svg/ic_invoice.svg": "4d963cd9a24714e1228d8f88e27944d8",
"assets/assets/svg/ic_list_task.svg": "db2fb956bb6d8d3c9af20e95041c4418",
"assets/assets/svg/ic_mail.svg": "ffd0ccc412d63035affe79ff360431f0",
"assets/assets/svg/ic_note.svg": "bf65f350ba2f48487536de9577269a6f",
"assets/assets/svg/ic_off.svg": "b0219b44226062d89630602819410b30",
"assets/assets/svg/ic_on.svg": "407be8996dffa3934025265f03b971c8",
"assets/assets/svg/ic_profile.svg": "7fa1ceaf8c1d9f3e6951e9a2b01a8bc5",
"assets/assets/svg/ic_spa_logo.svg": "6366d48823ef696ecd27a58332846bed",
"assets/assets/video/spa_ad_video.mp4": "65311edf08a6faf0ba263ad5bdc20ec7",
"assets/FontManifest.json": "d8372b70d21b625c2d4602b7327224b7",
"assets/fonts/MaterialIcons-Regular.otf": "7fa494edf65173b32689bd886e307e80",
"assets/NOTICES": "6ea9d73b46ba69999345dd05d5f8b8a7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f70e46746c999d9801bdc3ae45323112",
"/": "f70e46746c999d9801bdc3ae45323112",
"main.dart.js": "6f663f7e3456ba2c6bc22995b5367cc7",
"manifest.json": "646bc596caece3ecaaa06bc7f5f989bd",
"version.json": "b7601e693be6a324cb433e29d39717ef"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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

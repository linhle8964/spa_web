'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "b7601e693be6a324cb433e29d39717ef",
"index.html": "a93a8d11c3573f172f3c6667728a8053",
"/": "a93a8d11c3573f172f3c6667728a8053",
"main.dart.js": "c08b2379f64f1c7839b00e61d4b98ab3",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "43c7335e1c85555e0b82da657ff9b441",
"assets/AssetManifest.json": "7d4b89995ddffbd849a5ca56aab58dd2",
"assets/NOTICES": "d3ebac466295cf94a7d202ac31740918",
"assets/FontManifest.json": "d8372b70d21b625c2d4602b7327224b7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "f41ea65b9a2907ff460ddbd158a6d6d9",
"assets/fonts/MaterialIcons-Regular.otf": "3a371c1a3f10467127fe9dbde6d45556",
"assets/assets/svg/ic_off.svg": "53edcbed64b29947b9d6de6e67b7cfc1",
"assets/assets/svg/ic_note.svg": "d8ad8e7ce97e8b03f4f4559cce53d52d",
"assets/assets/svg/ic_mail.svg": "d0c4c29e4366abf382b65198d5f2e5a4",
"assets/assets/svg/ic_spa_logo.svg": "2c82f7ae76014b380f15cd30d2db7a99",
"assets/assets/svg/ic_profile.svg": "58843039cf590cfdcf93989a45c528ba",
"assets/assets/svg/ic_add_calender.svg": "2c3bc7f7bb8719ee82fd266dd117a142",
"assets/assets/svg/ic_add.svg": "bf36eeea1ee3ceb7ccf3ffaeedb776d3",
"assets/assets/svg/ic_chart_year.svg": "2d2a9bb893e0fa46538402b096db5061",
"assets/assets/svg/ic_invoice.svg": "b9cb9f6a68fc3571b1a1723ffd3b2337",
"assets/assets/svg/ic_home.svg": "5b3073648c4d61b3223c6f243eb1a97e",
"assets/assets/svg/ic_close.svg": "7626c89dcd9844ddc02a3f3310dd9031",
"assets/assets/svg/ic_hour_glass.svg": "5f49d088236226d5bbe7fe1728d85974",
"assets/assets/svg/ic_back_ios.svg": "56d5ab8531735a1f52704ebd645ae736",
"assets/assets/svg/ic_date_picker.svg": "e1822f13eabefa66c220604647d9e26a",
"assets/assets/svg/ic_list_task.svg": "e608ae98d44fa73dd3ab9dfd050edb8f",
"assets/assets/svg/ic_close_bg.svg": "ab65df981b23acc0ed6b482320cac227",
"assets/assets/svg/ic_on.svg": "36ff766f02d2939c9f1dc72356bfec22",
"assets/assets/svg/ic_drop_down.svg": "95e8b7354b4160f13dd99ec77f7ede37",
"assets/assets/svg/ic_check.svg": "ecd5bde5fa3e3cdc6502b7000508f9d9",
"assets/assets/svg/ic_chart.svg": "605a2d504466308cf9a9a6c4e70449cf",
"assets/assets/video/spa_ad_video.mp4": "65311edf08a6faf0ba263ad5bdc20ec7",
"assets/assets/social_media_icon/ic_x.png": "eb1d2f9382c8483e2a5dfbdee80a0423",
"assets/assets/social_media_icon/ic_insta.png": "537e1565fcec3b22d8245aed439ab747",
"assets/assets/social_media_icon/ic_fb.png": "b7d1e5c14c4808992b1daca825562b7c",
"assets/assets/social_media_icon/ic_yt.png": "ef5e24535cc98e5a7e9d249d3c787fb9",
"assets/assets/images/dog.png": "b8e13cfb66b5f6a9c0b65a6fd2e3a526",
"assets/assets/images/banner_image.png": "00361925408d2f34fb8566ac74003f3a",
"assets/assets/images/app_icon.png": "4823326058f4afe3da51b87a797add87",
"assets/assets/images/clipboard.png": "6b5d5720ebfb5f31dc1178e233e26f50",
"assets/assets/images/shower.png": "7dd1adb874bd8f8971a3b7154af06b1e",
"assets/assets/images/ic_spa_logo.jpg": "9252e05a45b803975c9a9074801f6d13",
"assets/assets/images/weight_lifter.png": "f5e725d86d50341b4b28d500cc4dc054",
"assets/assets/images/run.png": "0c68345abd711c6ed657fccd16c35767",
"assets/assets/images/about_us_image.png": "4aac1e80ad95a6e30674f43d12a338f3",
"assets/assets/images/wrestling.png": "97abcd8688b3dd0a53e7b6a28876d8c3",
"assets/assets/images/memo.png": "d52fe912752a12d2e4833c27461577e6",
"assets/assets/images/cyc.png": "0d2acfba5ca5a926551ea7726397890b",
"assets/assets/images/lotus.png": "42320733fba502855a164c73ffca3754",
"assets/assets/images/sufter.png": "2f30a3082d2e15c24ef92df9ef696c4b",
"assets/assets/images/basket_ball.png": "afd70dcb413126e4afda8f2486f44e13",
"assets/assets/images/hammer.png": "b6ebf83db20645bd49e16c65e8261d6d",
"assets/assets/images/swim.png": "e225ac1200a49ad7f253c56133bdd670",
"assets/assets/images/golf.png": "14392cd7e3292daae5236ae88f6cab48",
"assets/assets/images/open_book.png": "66ae871af386853071738c533ee5843e",
"assets/assets/images/imagelogin.png": "2a7852bb74dcaa895369376b6fe6319e",
"assets/assets/dummy_image/spa_3.jpeg": "113b3e809e7413eb8e91012f7943a14a",
"assets/assets/dummy_image/spa_2.jpeg": "4ffda7be50edb4cf63736dce7a617ecb",
"assets/assets/dummy_image/spa_5.jpeg": "1952e9f3577db8985d57db716bb5a255",
"assets/assets/dummy_image/spa_8.jpeg": "edd6fac020ee61d9072cfbc37e10e1cf",
"assets/assets/dummy_image/spa_4.jpeg": "7f1d354f348fd9f900eba2963f384074",
"assets/assets/dummy_image/spa_6.jpeg": "eb657aefce00d435679fce5b7d3457e4",
"assets/assets/dummy_image/spa_1.jpeg": "5a3089a138bd79f4828af954ff137215",
"assets/assets/fonts/PlayfairDisplay-VariableFont_wght.ttf": "9262890da570b6e8d1741d0e88138b9c",
"assets/assets/fonts/PlayfairDisplay-Italic-VariableFont_wght.ttf": "7a2b1e55108afc8ac045e60953c6c75e",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
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

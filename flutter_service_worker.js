'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "9cd599a3523898e6a12e13ec787da50a",
".git/config": "99cb34993c8b5e0cd0d3992010834a6a",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "f8f2a8d1f5e781a34db251ae99ce051d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "4db2a10981da4c484458537713aaca00",
".git/logs/refs/heads/master": "4db2a10981da4c484458537713aaca00",
".git/logs/refs/remotes/web/master": "28807c228619c60ce1ead798f43794d0",
".git/objects/0b/b39421e05a4385e7c523fbe76537f5224672d5": "552db0bd3e3fe0e65b9d35dca42fd53a",
".git/objects/14/5c753392d81ea57426dcbd2ab939c28c7288a3": "a4c6cd97d05ae847f19070dd95c9dc04",
".git/objects/18/d4a832b149ba163e9c0d2ad7f224afbd002765": "7f2e521f5edce4b4ffc3fc9b6237a402",
".git/objects/1a/b847b818dec389fb43fb9da80637c02e27d3d3": "8af286f2a069534106d53e8c037b0a4a",
".git/objects/22/db43513aadad04853713464e6555d93d8d46bb": "fd728bab3be1a1cbc0a235222861321c",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/2b/2c3a562b375d8b8666585df340e8f3868f38a8": "92a5ead6e841d0afb413c30b02850499",
".git/objects/2b/8980655685801bfa01333305aba08caa4690e4": "e1a5ae22c5f7a1b7f7e0c2c957f84883",
".git/objects/31/1fc7385533a1f15a0c5901cc9d831d866d1be6": "65dcebcd728d7deb6c4c1d1942102627",
".git/objects/38/b13fefa840f80ee072fad24340683f8ea99a0c": "5d18f6cfeab1c524e579b5016b8f9792",
".git/objects/3b/eeb65cef33c1cdf02cdd2a9d6d46daabf1f452": "3e637752c6341b3a0231d83749e5c619",
".git/objects/3f/7682a6e830e34f27e98a37d386fa63b2985df4": "1acac7a08041d4c873c649de6751474c",
".git/objects/47/818cc125f4b61ab58210edd3c06f8c437f90ba": "ce1161c7701ab241f737dc9b927be76d",
".git/objects/53/10b8c976fc0d43a998ebac6b55cbcb91c1f66e": "edbc3437db20d8812de446e7ba65ec2e",
".git/objects/58/48fb7a5c1defeeeb819cd69663ffca6544aedf": "5f5bec1137fb8bc240f8a4e73e2e687f",
".git/objects/5e/907cc83695802cbdcc63b1faffe2d4ccc1aa37": "19ccff9be9d4d98c0c5db5232467fd7c",
".git/objects/5f/2e3e08be54da29ce9e92d0069e950ee80983db": "714d87cc89f2e8131d896f07cd176ccf",
".git/objects/60/2eb22b7f46da12e79a4b78d0fb41c00f3c96ce": "1bfe8bf7f925534d46c35b9297c405c5",
".git/objects/63/de0ca6b54aa744e08e67fb650a28090bd37981": "b4d32faf892a7431397f40ede6a1eb6f",
".git/objects/71/28e318c71a3c890191035a2e2d3d11a846965f": "e571130db50f4894bffae848cfa43bbf",
".git/objects/72/3a979ba341f9ac96695e10965cc1ec4728b5e2": "8697bfd5fdbde153d9f50dc8000c3f9b",
".git/objects/72/4f778886cd4f5af8017213c2c326c3caf3bb6d": "3e8fbe1c49c414aa27eda2277ce9f010",
".git/objects/74/6f2fe74c60a86c9dfeb117550af9ab7182f84f": "535bcc846cf889445929a657b35a0662",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7c/fb6f962bdb8c4b610bb1bb25b6c4361f9d20e8": "20235224869b650fc9ceb371e56bb5c9",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/c44a6f96da809f4dd95bd1d1d7f309e597a346": "5667f61f7967c543ae3d527fd49b36d1",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8f/75af2769cd31b1826fff75cd2da93c01a9b502": "b85104982004a133e0d2ddfdf02c98c8",
".git/objects/97/8746b5424d1212460133977131fc5ef0971abb": "3cc094294d4d3275ff02b12eff5e10c3",
".git/objects/9b/9c99f6824dda746afa8cd838e78d4abd92c12d": "3466a296ab5922d92804813fdd4225b5",
".git/objects/9d/2ad795459f75fc1b596cb086dd33726c6ff56e": "9aa1a5c07869866463f8d0b9ae522f61",
".git/objects/a1/011da9238a8cb6d574f42db9e7de2c7f2c76d7": "8580fb80c623192a64147f22175da53f",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a3/41a384fcb69bfe9a6e86879ac1fc0f5eace5d8": "2b21ee18ca0e5c5028a559ae25008ede",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bd/af47a37b0467397e1cc6797559e87ede9a45c1": "d89ca1fcae823cda89a06e1da2001139",
".git/objects/bf/2b3f89db2114cde8bff5c303c258793a6eca5f": "c669cfce29ea84daadafa3af82b67a66",
".git/objects/c2/d38391699fbb96db52d77dabd3980e83001849": "ce92667cbdd29a2998a9cdd493c96096",
".git/objects/c4/dd984f88f7ebc199bb524f8a453f17e278c5d9": "384c234614fc2c5f1ca411c66341716c",
".git/objects/cc/5725b315760d100f6386e6bbf09af8fe57a9f1": "29c19352d2bee0821600856656c95791",
".git/objects/cc/92e0d45120d42ccbc609f4a55f93f2ebb4c213": "07a205249ea01243bfcc72a19a45e59d",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/cd/40205499f1a20ca1f0933fd55c8e739ad6bc30": "bd3b2ba958101de62f6b33e1c07902cd",
".git/objects/d0/91482841d4905c8a645b9b1c6dfc46a1f3fcde": "08abbc055708cc905f55df6163894319",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/df/da12845aa298595e3c39b849c27855e00641f7": "5940e957f584c93e87aca4773d5bcb2e",
".git/objects/e0/2012ca0a73da86edd7614aebdc24f350669305": "4cb516f7f367eb8387729d8cfc7cf9b2",
".git/objects/e0/21a0839c859587833b6774595d561d849dc54f": "a955ddda578bd47389cdacf50a3af30a",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e7/c807c92d43d59ba06c0113560076e75e4715a2": "cfa46658a7da55c75fac6330e43197be",
".git/objects/e9/22989fb40f6f2567403b02fadc9ba5c33c6931": "e2fa47ccde6610fdf3cf5e48dcc1471f",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/f2bfedbcab2bd85db25329408876434c3300ef": "92ff38046aa33e0f3e785b265a4894d1",
".git/objects/f6/f20a405a6de8352d14c2bfbc817cd157bc044f": "57c6f4305cb5d0e0aca7e21cb2ed3f94",
".git/objects/f8/9fc9f854f31dfa1481d31d1b19c25816da4947": "6e21873c815076cd177381687146928c",
".git/objects/fc/11d9a899ab9cb1ff998240afab80a4dba170f4": "5fa5495e4734317300d7c970837ebb92",
".git/refs/heads/master": "b73e68df4dc3f64bbdad1b091cfadcb2",
".git/refs/remotes/web/master": "b73e68df4dc3f64bbdad1b091cfadcb2",
"assets/AssetManifest.json": "f4bd8064c13d1d60c1c722ba2d5b4021",
"assets/assets/12804210_5053309.jpg": "f1bb0552b1c29d19f6fd179a71ab9c1b",
"assets/assets/14979247_SL_060521_43530_09.jpg": "1ba9a833e3663e18565f72675ee9b3fc",
"assets/assets/19549381_SL-101619-24150-73.jpg": "b3f588f904ae3bca8269490c86a0cd37",
"assets/assets/aalucross.jpg": "97fd032b6b56f9d362650dd0f18d26f3",
"assets/assets/abc.png": "7cbc1835e68d94b2c5594b729c3b5c47",
"assets/assets/abc.psd": "c972384b4928a6e05a872074e517d0a0",
"assets/assets/calculator.jpg": "1d4a5ed6039d95880f64ddaeaf3bfdcd",
"assets/assets/CV_saurav.jpg": "3c59dceba3fea3d0ef85d8ea39557d1e",
"assets/assets/desktopapp.jpg": "c6bb62d3dee9af64f4626e347f854679",
"assets/assets/gamedevelopment.jpg": "6c1b8b890593abef8d751fec89d5dc34",
"assets/assets/istockphoto-1176012573-170667a.jpg": "0eff31b9f1e5359b3e51a6093f5748ce",
"assets/assets/light-color-12.jpg": "924da3ec9fc40ff365442145d12759a3",
"assets/assets/mobileapp.jpg": "a1377f97afe10dac9843b072b41731af",
"assets/assets/plantsinfo.jpg": "d5c71883cb0b1690abc4a01154d66481",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "cabf4a2d6d8b8ba6cd90591059c39c2a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4e20cb87b0d43808c49449ffd69b1a74",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "1f7cb220b3f5309130bd6d9ad87e0fc0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "26f5af2d93473531f82ef5060f9c6d45",
"assets/shaders/ink_sparkle.frag": "6333b551ea27fd9d8e1271e92def26a9",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "afc572aabd60d57fbab0944ebc1b96c0",
"/": "afc572aabd60d57fbab0944ebc1b96c0",
"main.dart.js": "aa6040a8c8251e0a7bf4c25773217572",
"manifest.json": "2df93474bedaa5d6d6d51def3d3df7c0",
"version.json": "bb7ee85e36e9ee4bb59ce4ac88ed414a"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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

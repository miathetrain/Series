{
  flutter,
  makeDesktopItem,
  lib
}:

flutter.buildFlutterApplication {
  pname = "nyaashows";
  version = "0.1.0";

  src = lib.cleanSource ./.;

   pubspecLock = lib.importJSON ./pubspec.lock.json;

     desktopItems = [
    (makeDesktopItem {
      name = "quickgui";
      exec = "quickgui";
      icon = "quickgui";
      desktopName = "Quickgui";
      comment = "An elegant virtual machine manager for the desktop";
      categories = [ "Development" "System" ];
    })
  ];

  meta = with lib; {
    homepage = "https://github.com/kawaiiepic/NyaaShows";
    description = "Video Player which streams torrents using real-debrid ";
    platforms = platforms.linux;
    license = licenses.gpl3Plus;
  };
}

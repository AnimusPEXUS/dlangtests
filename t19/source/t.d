module dedit.main;

import std.format;

import dlangui;

mixin APP_ENTRY_POINT;

extern (C) int UIAppMain(string[] args)
{

    auto window = Platform.instance.createWindow("t19 test", null);

    auto vlay = new VerticalLayout;
    window.mainWidget = vlay;

    MainMenu mm = new MainMenu;

    auto mm0 = new MenuItem;
    auto mmi0 = new MenuItem(new Action(0, "item0"d));
    mm0.add(mmi0);

    mm.menuItems = mm0;

    auto mmi1 = new MenuItem(new Action(0, "item1"d));
    mm0.add(mmi1);

    mm.menuItems = mm0;

    vlay.addChild(mm);

    window.show();

    return Platform.instance.enterMessageLoop();
}

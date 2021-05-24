module dedit.main;

import std.format;

import dlangui;

mixin APP_ENTRY_POINT;

extern (C) int UIAppMain(string[] args)
{

    auto window = Platform.instance.createWindow("t17 test", null);

    auto vlay = new VerticalLayout;
    /* vlay.layoutWidth(FILL_PARENT); */
    window.mainWidget = vlay;

    auto tlay = new TableLayout;
    vlay.addChild(tlay);

    tlay.colCount(3);
    /* tlay.rowCount(4); */

    auto tl = new TextWidget;
    auto ll = new TextWidget;
    auto bl = new TextWidget;
    auto rl = new TextWidget;

    auto te = new EditLine;
    auto le = new EditLine;
    auto be = new EditLine;
    auto re = new EditLine;

    tlay.addChild(new TextWidget().text = "top");
    tlay.addChild(tl);
    tlay.addChild(te);

    tlay.addChild(new TextWidget().text = "left");
    tlay.addChild(ll);
    tlay.addChild(le);

    tlay.addChild(new TextWidget().text = "bottom");
    tlay.addChild(bl);
    tlay.addChild(be);

    tlay.addChild(new TextWidget().text = "right");
    tlay.addChild(rl);
    tlay.addChild(re);

    auto gbtn = new Button().text = "get"d;
    vlay.addChild(gbtn);

    auto sbtn = new Button().text = "set"d;
    vlay.addChild(sbtn);

    auto fs = delegate dstring(int a) { return format("%d"d, a); };

    gbtn.click = delegate bool(Widget w) {
        auto wrt = window.windowRect;
        tl.text = to!dstring(fs(wrt.top));
        ll.text = to!dstring(fs(wrt.left));
        bl.text = to!dstring(fs(wrt.bottom));
        rl.text = to!dstring(fs(wrt.right));

        te.text = tl.text;
        le.text = ll.text;
        be.text = bl.text;
        re.text = rl.text;

        return true;
    };

    sbtn.click = delegate bool(Widget w) {
        auto wrt = Rect();
        wrt.top = to!int(te.text);
        wrt.left = to!int(le.text);
        wrt.bottom = to!int(be.text);
        wrt.right = to!int(re.text);
        window.moveAndResizeWindow(wrt);
        return true;
    };

    window.show();

    return Platform.instance.enterMessageLoop();
}

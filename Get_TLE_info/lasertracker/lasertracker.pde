import controlP5.*;

ControlP5 cp5;
ListBox l;

void setup() {

  size(1280, 800);
  background(0, 0, 0);
  cp5 = new ControlP5(this);
  l = cp5.addListBox("myList")
    .setPosition(100, 100)
      .setSize(120, 120)
        .setItemHeight(15)
          .setBarHeight(15)
            .setColorBackground(color(40, 128))
              .setColorActive(color(255, 128))
                ;

  l.captionLabel().toUpperCase(true);
  l.captionLabel().set("A Listbox");
  l.captionLabel().setColor(0xffff0000);
  l.captionLabel().style().marginTop = 3;
  l.valueLabel().style().marginTop = 3;

  for (int i=0;i<80;i++) {
    ListBoxItem lbi = l.addItem("item "+i, i);
    lbi.setColorBackground(0xffff0000);
  }
}


void controlEvent(ControlEvent theEvent) {
  // ListBox is if type ControlGroup.
  // 1 controlEvent will be executed, where the event
  // originates from a ControlGroup. therefore
  // you need to check the Event with
  // if (theEvent.isGroup())
  // to avoid an error message from controlP5.

  if (theEvent.isGroup()) {
    // an event from a group e.g. scrollList
    println(theEvent.group().value()+" from "+theEvent.group());
  }

  if (theEvent.isGroup() && theEvent.name().equals("myList")) {
    int test = (int)theEvent.group().value();
    println("test "+test);
  }
}


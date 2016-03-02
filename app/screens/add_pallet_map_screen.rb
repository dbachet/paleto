class AddPalletMapScreen < PM::MapScreen
  title "Signaler une nouvelle palette"
  #start_position latitude: 35.090648651123, longitude: -82.965972900391, radius: 4
  tap_to_add length: 1.5, annotation: {animates_drop: true, title: "Ajouter des infos"}

  def will_appear
    my_region = region({
      coordinate:{
        latitude: 43.6,
        longitude: 1.433333
      },
      span: [0.5, 0.5]
    })
    set_region(my_region)
    NSNotificationCenter.defaultCenter.addObserver(self, selector:"pin_adding:", name:"ProMotionMapWillAddPin", object:nil)
    NSNotificationCenter.defaultCenter.addObserver(self, selector:"pin_added:", name:"ProMotionMapAddedPin", object:nil)
  end

  def will_disappear
    NSNotificationCenter.defaultCenter.removeObserver(self)
  end

  def pin_adding(notification)
  end

  def pin_added(notification)
    # Once the pin is dropped we want to select it
    new_annotation = annotations.last
    select_annotation_at(annotations.index(new_annotation))
    open AddDetailsToPalletForm.new(nav_bar: true)
  end

  def annotation_data
    []
  end
end

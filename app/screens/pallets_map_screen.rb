class PalletsMapScreen < PM::MapScreen
  title "Trouver des palettes"
  start_position latitude: 35.090648651123, longitude: -82.965972900391, radius: 4

  def will_appear
    my_region = region({
      coordinate:{
        latitude: 43.6,
        longitude: 1.433333
      },
      span: [0.5, 0.5]
    })
    set_region(my_region)
  end

  def annotation_data
    Pallet.all.array.map do |pallet|
      {
        longitude: pallet.longitude,
        latitude: pallet.latitude,
        title: pallet.title,
        pin_color: :red
      }
    end
  end
end

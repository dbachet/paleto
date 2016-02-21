class HomeScreen < PM::Screen
  title "Paleto"
  stylesheet HomeScreenStylesheet
  nav_bar true, {
    nav_controller: PM::NavigationController,
    toolbar: false,
    transition_style: UIModalTransitionStyleCrossDissolve,
    presentation_style: UIModalPresentationFormSheet,
  }

  def on_load
    append(UIButton, :go_to_pallets_map_button).on(:touch) do |sender|
      open PalletsMapScreen.new(nav_bar: true)
    end

    append(UIButton, :go_to_add_pallet_map_button).on(:touch) do |sender|
      open AddPalletMapScreen.new(nav_bar: true)
    end
  end

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end

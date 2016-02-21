class HomeScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.green
  end

  def go_to_pallets_map_button(st)
    st.frame = {l: 0, t: 20, width: 400, height: 200}
    st.text = "Je cherche une palette"
    st.background_color = color.blue
    st.color = color.white
  end

  def go_to_add_pallet_map_button(st)
    st.frame = {l: 0, below_prev: 20, width: 400, height: 200}
    st.text = "Signaler une palette"
    st.background_color = color.blue
    st.color = color.white
  end
end

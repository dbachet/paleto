class AnnotationDetailsScreen < PM::Screen
  title "Détails"
  stylesheet AnnotationDetailsScreenStylesheet
  nav_bar true, {
    nav_controller: PM::NavigationController,
    toolbar: false,
    transition_style: UIModalTransitionStyleCrossDissolve,
    presentation_style: UIModalPresentationFormSheet,
  }

  def on_load
    append(UILabel, :title).data('Some long title')
    append(UILabel, :description).data('Some long title')
  end

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end


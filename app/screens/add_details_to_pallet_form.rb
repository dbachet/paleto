class AddDetailsToPalletForm < PM::XLFormScreen

form_options required:  :asterisks, # add an asterisk to required fields
             on_save:   :'save_form:', # will be called when you touch save
             on_cancel: :cancel_form, # will be called when you touch cancel
             auto_focus: true # the form will focus on the first focusable field

  def save_form(values)
    mp values
    persist

    back_to_previous_screen
  end

  def cancel_form
    back_to_previous_screen
  end

  def persist
    pallet = Pallet.create(
      longitude: model.longitude,
      latitude: model.latitude,
      title: values["title"],
      description: values["description"],
      created_at: Time.now,
      updated_at: Time.now
    )
    cdq.save
  end

  def navigation_controller
    app.window.rootViewController
  end

  def previous_screen
    navigation_controller.viewControllers.find { |controller| controller.instance_of?(AddPalletMapScreen) }
  end

  def model
    previous_screen.annotations.last
  end

  def back_to_previous_screen
    navigation_controller.popViewControllerAnimated(true)
  end

  def form_data
    [
      {
        title:  'Détails',
        cells: [
          {
            title:       'Title',
            name:        :title,
            type:        :text,
            placeholder: 'Titre',
            required:    true
          },
          {
            title: 'Description',
            name:  :desctiption,
            type:  :text,
            placeholder: 'Description',
            required: true
          },
          {
            title: 'Image',
            name: :picture,
            type: :image
          }
        ]
      }
    ]
  end
end

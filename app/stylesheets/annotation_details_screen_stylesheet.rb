class AnnotationDetailsScreenStylesheet < ApplicationStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.green
  end

  def title(st)
    st.frame = {l: 0, t: 20, width: 400, height: 200}
    st.background_color = color.blue
    st.color = color.white
  end

  def description(st)
    st.frame = {l: 0, t: 20, width: 400, height: 200}
    st.background_color = color.blue
    st.color = color.white
  end
end

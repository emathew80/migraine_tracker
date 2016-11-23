class Tracker < ActiveRecord::Base
  #   PAINSCALE = {
  #   '0'    => '0_level',
  #   '1'    => '1_level',
  #   '2'   => '2_level',
  #   '3' => '3_level',
  #   '4'  => '4_level',
  #   '5'  => '5_level',
  #   '6'    => '6_level',
  #   '7'   => '7_level',
  #   '8' => '8_level',
  #   '9'  => '9_level',
  #   '10'  => '10_level'
  # }
      PAINSCALE = {
    '0'    => '0',
    '1'    => '1',
    '2'   => '2',
    '3' => '3',
    '4'  => '4',
    '5'  => '5',
    '6'    => '6',
    '7'   => '7',
    '8' => '8',
    '9'  => '9',
    '10'  => '10'
  }

  def humanized_rating
      PAINSCALE.invert[self.rating]
  end
end

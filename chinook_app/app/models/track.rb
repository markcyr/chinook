class Track < ActiveRecord::Base

  SHORT = 18000
    LONG = 36000

    scope :short, -> {where ('milliseconds' < ?',SHORT')}
    scope :medium, -> {where ('milliseconds >= ? AND milliseconds < ?',SHORT, LONG)}
        scope :long, -> {where ('milliseconds' >= ?',LONG)}

        scope :starts_with_a -> {where('name ILIKE ?', 'a%')}
        scope :starts_with_letter -> (letter) {where ('name ILIKE ?', "#{letter}%")}

        scope: shorter_than_or_equal_to, -> (milliseconds) {where ('milliseconds <= ?', milliseconds)}
#   def self.short
#     where('milliseconds' < SHORT)
#
#   Track.where('milliseconds >= ? AND milliseconds < ?', 180000, 360000).size
#
# end

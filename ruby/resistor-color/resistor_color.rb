# frozen_string_literal: true

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(color)
    index = 0
    done = false

    until done
      if color == COLORS[index]
        done = true
        break
      end

      index += 1
    end

    index
  end
end

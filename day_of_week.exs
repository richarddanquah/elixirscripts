defmodule Sample.DayOfWeek do
  def day_abbreviation(day) do
    if day == :Monday do
      "M"
    else
      if day == :Tuesday do
        "Tu"
      else
        if day == :Wednesday do
          "W"
        else
          if day == :Thursday do
            "Th"
          else
            if day == :Friday do
              "F"
            else
              if day == :Saturday do
                "Sa"
              else
                  "Su"
              end
            end
          end
        end
      end
    end
  end

  def day_abbreviation2(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tu"
      day == :Wednesday -> "W"
      day == :Thursday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid day"
    end
  end


  def day_abbreviation3(day) do
    case day do
      :Monday -> "M"
      :Tuesday -> "Tu"
      :Wednesday -> "W"
      :Thursday -> "Th"
      :Friday -> "F"
      :Saturday -> "Sa"
      :Sunday -> "Su"
      true -> "Invalid day"
    end
  end

  def describe_date(day) do
    case date do
      {1, _ , _} -> "Brand new month!"
      {25, 12 , _} -> "Merry Christmas"
      {25, month , _} -> "Only #{12 - month} month"
      {31, 10 , 1517} -> "The reformation is starting"
      {31, 10 , _} -> "Happy Halloween"
      {_, month , _} -> when month <= 12 -> "Just an average day"
      {_, _ , _} -> "Invalid month"

    end
  end



end

require 'csv'

namespace :import do
  task wells: :environment do
    filepath = File.join Rails.root, "app/assets/csv/ChauddagramProcessed.csv"
    CSV.foreach(filepath) do |row|
      union, Mouza, Village, Depth, Wells, MeanAs, StDevAs = row
      well = Well.create(union: union, Mouza: Mouza,
                          Village: Village, Depth: Depth,
                          Wells: Wells, MeanAs: MeanAs,
                          StDevAs: StDevAs)
    end
  end
end
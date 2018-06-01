# frozen_string_literal: true

ActiveAdmin.register PartStat do
  permit_params :part_id, :stat_id, :ratio
end

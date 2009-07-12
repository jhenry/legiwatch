Factory.define :legislator do |u|
    u.sequence(:first_name) {|n| "Legislator #{n.to_s}"}
    u.sequence(:last_name) {|n| "Coolio #{n.to_s}"}
end
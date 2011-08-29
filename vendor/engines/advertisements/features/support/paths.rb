module NavigationHelpers
  module Refinery
    module Advertisements
      def path_to(page_name)
        case page_name
        when /the list of advertisements/
          admin_advertisements_path

         when /the new advertisement form/
          new_admin_advertisement_path
        else
          nil
        end
      end
    end
  end
end

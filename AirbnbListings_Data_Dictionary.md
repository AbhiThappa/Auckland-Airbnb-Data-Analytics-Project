# AirbnbListings Data Dictionary

  --------------------------------------------------------------------------
  Column                     Data Type               Description
  -------------------------- ----------------------- -----------------------
  listing_id                 float                   Unique identifier for
                                                     each Airbnb listing.

  listing_name               nvarchar(255)           Title/name of the
                                                     Airbnb listing shown to
                                                     guests.

  host_id                    float                   Unique identifier for
                                                     the host.

  host_name                  nvarchar(255)           Name of the property
                                                     host.

  city                       nvarchar(255)           City where the listing
                                                     is located.

  neighborhood               nvarchar(255)           Specific suburb or
                                                     neighborhood of the
                                                     listing.

  property_type              nvarchar(255)           Property category
                                                     (Apartment, House,
                                                     Villa, etc.).

  room_type                  nvarchar(255)           Entire home, private
                                                     room, or shared room.

  price_per_night            money                   Nightly rental price.

  cleaning_fee               money                   One-time cleaning fee.

  service_fee                money                   Platform service fee.

  bedrooms                   float                   Number of bedrooms.

  bathrooms                  float                   Number of bathrooms.

  beds                       float                   Number of beds.

  accommodates               float                   Maximum guest capacity.

  max_nights                 float                   Maximum stay length.

  min_nights                 float                   Minimum stay length.

  booked_nights              float                   Nights booked.

  availability               float                   Available nights.

  no_of_reviews              float                   Total guest reviews.

  overall_rating             float                   Average guest rating.

  host_response_rate         float                   Host response
                                                     percentage.

  superhost                  nvarchar(255)           Superhost status
                                                     (Yes/No).

  amenities_count            float                   Number of amenities
                                                     offered.

  last_review_date           datetime                Date of latest review.

  total_fee_per_stay         money                   Total fees charged per
                                                     stay.

  estimated_booked_revenue   money                   Estimated booking
                                                     revenue.
  --------------------------------------------------------------------------

## Business Uses

-   Revenue analysis
-   Occupancy analysis
-   Host performance
-   Pricing analysis
-   Review and rating analysis
-   Power BI KPI creation

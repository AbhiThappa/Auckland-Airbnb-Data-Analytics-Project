# Power BI DAX Measures

See measures:

``` dax
Total Revenue = SUM(Auckland_Airbnb_Project_Dataset[estimated_booked_revenue])
```

``` dax
Total Booked Nights = SUM(Auckland_Airbnb_Project_Dataset[booked_nights])
```

``` dax
Average Price = AVERAGE(Auckland_Airbnb_Project_Dataset[price_per_night])
```

``` dax
Average Rating = AVERAGE(Auckland_Airbnb_Project_Dataset[overall_rating])
```

``` dax
Total Listings = COUNT(Auckland_Airbnb_Project_Dataset[listing_id])
```

``` dax
Occupancy Rate = DIVIDE(SUM(Auckland_Airbnb_Project_Dataset[booked_nights]),SUM(Auckland_Airbnb_Project_Dataset[availability]))
```

``` dax
Revenue per Listing = DIVIDE([Total Revenue],[Total Listings])
```

``` dax
Revenue per Booked Night = DIVIDE([Total Revenue],[Total Booked Nights])
```

``` dax
Superhost % = DIVIDE([Superhost Listings],[Total Listings])
```

Additional measures from our discussion: Average Cleaning Fee, Average
Service Fee, Average Total Fee, Total Reviews, Average Bedrooms, Average
Bathrooms, Average Beds, Average Guests, Average Availability, Superhost
Listings, Non Superhost Listings, Average Response Rate, Average
Amenities, Highest Revenue, Lowest Revenue, Revenue Rank.

## Suggested Slicers

-   Neighborhood
-   Property Type
-   Room Type
-   Bedrooms
-   Price per Night
-   Overall Rating
-   Superhost
-   Accommodates

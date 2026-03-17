# CityExplorer - Features for Marking

## 1.1 Dataset Description
- File: dataset_description.md
- Describes Faker, CSV, and JSON data sources

## 1.2 ERD
- File: ERD.txt
- Shows restaurants, landmarks, and reviews with polymorphic association

## 1.3 Three Tables
- restaurants, landmarks, reviews tables created
- All with proper columns

## 1.4 & 1.5 Associations
- restaurants has_many reviews (polymorphic)
- landmarks has_many reviews (polymorphic)
- reviews belongs_to reviewable (polymorphic)

## 1.6 Validations
- All models have presence and numericality validations

## 1.7 Three Data Sources
- Faker gem (primary data)
- CSV file (extra_restaurants.csv)
- JSON file (extra_landmarks.json)

## 2.1 About Page
- /about route
- Shows all data sources and statistics

## 2.2 Menu
- Navigation bar on all pages
- Links to Home, Restaurants, Landmarks, Reviews, About

## 3.1 Collection Navigation
- /restaurants and /landmarks index pages

## 3.2 Member Pages
- /restaurants/:id and /landmarks/:id show pages

## 3.3 Multi-model Data
- Show pages display associated reviews

## 3.4 Hierarchical Navigation
- Click cuisine on restaurant show to see all restaurants with that cuisine
- Click category on landmark show to see all landmarks in that category

## 3.5 Pagination
- Kaminari gem installed
- 9 items per page on index pages

## 4.1 Simple Search
- Text search on restaurants and landmarks

## 4.2 Hierarchical Search
- Search with cuisine/category dropdown filters

## 5.1 Valid HTML
- All pages validate as HTML5

## 5.2 ERB Conditional
- Rating-based messages on restaurant show page
- Different badges based on review ratings

## 5.3 Bootstrap Grid
- Responsive grid layout on all index pages
- Bootstrap 5 classes throughout

## 6.1 Git/GitHub
- Repository: https://github.com/li0828-web/city_explorer

## 6.2 20+ Commits
- $(git log --oneline | wc -l) commits with meaningful messages

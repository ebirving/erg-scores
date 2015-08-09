# er.go
## A Rails app for rowers and coaches

### Technologies Used
er.go is a fairly straightforward Rails app with a PostgreSQL database for Active Record. User authentication is handled through [Devise](https://github.com/plataformatec/devise). All forms are customized using [Simple Form](https://github.com/plataformatec/simple_form). The CSS is hand-rolled, with special thanks to Codrops [effects tutorials](http://tympanus.net/codrops/category/tutorials) and and CSS Tricks' [Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/guide).

##Login Instructions
The deployed version of er.go includes two sample users...

To preview the site with a fully seeded rower dashboard and rower functionality, use:
- email: rower@example.com
- password: password

To preview the site with a fully seeded coach roster and coach functionality, use:
- email: coach@example.com
- password: password

## Next Steps
- Make authorization more sophisticated using CanCan, then expand the list of possible roles to include Club Admin and Program Admin.
- Add support for users to have multiples roles. Along the same lines, add support for rowers who want/need to set their own workouts.
- Enable automatic calculation of splits based on time and distance.
- Enable sorting and filtering of data by various criteria, including gender, weight class, age range, club/team, program, and crew.
- Incorporate data visualizations using a js library like d3.
- Combine multiple intervals from the same workout session into a single model/element.
- Further enhance responsive design.
- See [Trello](https://trello.com/b/XQQBBKRc/week-6-project) for more...

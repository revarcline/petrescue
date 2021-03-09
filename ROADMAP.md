planning!

deploy to heroku ✔
use webpack
use devise ✔
google oauth?
not fb fuck that
def gh

bootstrap

get to models

Pet:

has many appointments

route includes type? no

adopted column which has hook to cancel appointments when marked true and delist from website

Appointment
belongs to pet
belongs to user

join model

also datetime
cannot overlap with another with same pet (30 mins)
only offer appointments on 30 min basis, write special validation
flash method for upcoming appointments if within a week

put flash in layout


User
oauth google
devise

learn bootstrap


post ideas

- heroku: make sure you designate platform in gemfile lock
- implementing adopt hook



logged in only:
users/:id
name
pets you are interested in + appointments

edit profile
users/:id/edit

appointments/:id
shows info
reschedule (edit)
cancel (delete) 

logged out avail:
pets/:id 
pet info w photo

create appointment while logged in does:
pets/:id/appointments/new (nested route)

while logged out, sign up to create appointment
from oauth should redirect to pet

pets/
index view

pets/:type
pets indexed by type


blog about oauth and devise and how it needs to be a put link after 2.0

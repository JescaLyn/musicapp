# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Band.create (
  [
    { name: "The Mowgli's" }, { name: "Taylor Swift" },
    { name: "The Decemberists" }
  ]
)

Album.create (
  [
    { band_id: 1, name: "Sound the Drum", kind: "studio", year: "2012" },
    { band_id: 1, name: "Waiting for the Dawn", kind: "studio", year: "2013" },
    { band_id: 1, name: "Kids in Love", kind: "studio", year: "2015" },
    { band_id: 2, name: "Speak Now", kind: "studio", year: "2010" },
    { band_id: 2, name: "Speak Now World Tour", kind: "live", year: "2011" },
    { band_id: 2, name: "Red", kind: "studio", year: "2012" },
    { band_id: 2, name: "1989", kind: "studio", year: "2014" },
    { band_id: 3, name: "Castaways and Cutouts", kind: "studio", year: "2002" },
    { band_id: 3, name: "Picaresque", kind: "studio", year: "2005" },
    { band_id: 3, name: "The Crane Wife", kind: "studio", year: "2006" },
    { band_id: 3, name: "The Hazards of Love", kind: "studio", year: "2009" }

  ]
)

Track.create (
  [
    { album_id: 1, name: "San Francisco", ord: 2, kind: "standard", lyrics: "I’ve been in love with love
      And the idea of something binding us together
      You know that love is strong enough
      I’ve seen time tell tales about that systematic drug
      Yeah that heart that beats as one
      It’s collectively unconsciously composed

      I lost my head in San Francisco
      Waiting for the fog to roll out
      But I found it in a rain cloud
      It was smiling down
      Do you feel the love? I feel the love
      C’mon c’mon, let's start it up!
      Let it pour out of your soul

      I’ve been in love with love
      And the idea of something binding us together
      You know that love is strong enough
      I’ve seen time tell tales about that systematic drug
      Yeah that heart that beats as one
      It’s collectively unconsciously composed

      Do you feel the love? I feel the love
      C’mon c’mon, let's start it up!
      Let it pour out of your soul

      Do you feel the love? I feel the love
      C’mon c’mon, let's start it up!
      Let it pour out of your soul"},
    { album_id: 1, name: "Carry Your Will", ord: 9, kind: "standard", lyrics: "Mmm mmm mmm mmm
      Cherish this cause when it doesn't last you'll wish you had
      I will cherish this
      I will be humble again
      What will it take to get me to get where I'm going
      Do you know the way?
      Do you know when the tunnel ends?

      Lord have mercy on me

      Mmm mmm mmm mmm

      I see house of lies built upon a foundation of sand.
      Th was our home
      That was our life, but we fell in
      Then it was dark and we could see no more
      But somehow we found each other
      Somehow we found hope

      If you carry your will, I will carry my will
      If you carry your will, I will carry my will
      If you carry your will, I will carry my will
      If you carry your will, I will carry my will

      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith
      Let your faith guide your faith, let your faith guide your faith

      If you carry your will, I will carry my will
      If you carry your will, I will carry my will
      If you carry your will, I will carry my will
      If you carry your will, I will carry my will

      Let your faith guide your faith
      Let your faith guide your faith
      Let your faith guide your faith

      Mmm mmm mmm mmm

      Cherish this cause when it doesn't last you'll wish you had" },
    { album_id: 2, name: "Clean Light", ord: 5, kind: "standard", lyrics: "Share these lyrics on Facebook!
      Sometimes I think away these days
      The way I spend them hiding
      Sometimes I can't lift up my head
      Maybe you can find me.
      All you need to know,
      Look for a light that's shining
      All we see now

      We see a fire starting.
      I swear I dream of waking up
      To find the future screaming
      But I've been sleepwalking so much
      I don't remember dreaming
      All we need to know
      Look for a light that's shining
      All we see now
      We see a fire starting
      We all look bright here
      Underneath the sun
      The same clean light, in the same love

      We'll all be here if the end is coming up
      The same clean light, in the same love
      So when you crawl into your head
      What do you think you're missing?
      I will lift you up again
      I will always listen
      All we need to know
      Look for a light that's shining
      All we see now

      We see a fire starting
      We all look bright here underneath the sun
      The same clean light, in the same love
      We'll all be here if the end is coming up
      The same clean light in the same love
      I hope you know that love is good enough
      What doesn't change will slip and fall away
      I hope you know you're loved
      And that's enough
      What doesn't change
      Doesn't matter anyway
      We are underneath the sun in the same love" },
    { album_id: 2, name: "Emily", ord: 7, kind: "standard", lyrics: "I caught you right before you closed your eyes
      You asked me if I'd been here all your life
      There's this person down inside of me
      The man I'm scared I'll never be, no
      He sits and watches patiently
      And sends me all the signs I need the most
      I don't mind, I feel that I'm waiting for the right time
      I know why I'm here
      I've been waiting for a lifetime
      Just trying to find some peace
      Somewhere inside of me
      Just let me know what it is I need

      Emily
      We went down to the cinema last night
      Let the pictures show us who we are inside
      You smiled at the truth you'd seen,
      It's the same truth that's inside of me, oh
      And I smiled at the truth I knew,
      It's the same truth that's inside of you, oh
      I don't mind, I feel that I'm waiting for he right time
      I know why I'm here, I've been waiting for a lifetime
      Just trying to find some peace
      Somewhere inside of me
      Just let me know what it is I need
      Emily" },
    { album_id: 3, name: "You're Not Alone", ord: 1, kind: "standard", lyrics: "You're not alone. No!
      If you know how you wanna live why don't you live it?
      If you know what you got to give you got to give it
      One breathe deeper than the last one
      One step closer to the ones we love
      You've been searching for the sun so long
      I mean it when I say

      You're not alone
      Even when you feel so far from home
      Everybody's here
      You're not alone
      Screaming in the mirror saying

      I've been broke
      Out of love
      But I know
      We're not alone. No!

      If you know what you wanna say why don't you say it?
      It don't matter what's in your hand you gotta play it
      One voice calling for the next one
      We stand closer to the ones we love
      You've been searching for the sun
      I mean it when I say

      You're not alone
      Even when you feel so far from home
      Everybody's here
      You're not alone
      Screaming in the mirror saying

      I've been broke
      Out of love
      But I know
      We're not alone. No!

      We're not alone! No!

      One breathe deeper than the last one
      One step closer to the ones we love
      You've been searching for the sun so long
      I mean it when I say

      You're not alone
      Even when you feel so far from home
      Everybody's here
      You're not alone
      Screaming in the mirror saying

      I've been broke
      Out of love
      Maybe I drink too much

      Cross my
      Out of luck
      But I won't give up!

      We're not alone!
      You're not alone!
      We're not alone!" },
    { album_id: 3, name: "Whatever Forever", ord: 6, kind: "standard", lyrics: "Well I'm slowly waking up
      To the screaming southern sun
      Marching straight at me
      Like soldiers through my eyes
      And is this all I'll ever be?
      Just so hungover in your sheets
      And I'll be wondering about that all my life

      But it's alright
      It's getting better all the time
      It's alright
      Yeah, it's alright

      And when the sun comes up
      Like it always does
      It's whatever forever
      You know we're falling together
      And when the sun comes up
      Like it always does
      It's whatever forever
      And it just keeps getting better

      Well I sit up on your bed
      And you just biting at my neck
      You're begging, 'Baby, please don't
      Baby, don't you leave'
      But I gotta go and write these songs
      So you don't have to get a job
      And you just smile at me and drift back into sleep

      But it's alright
      It's getting better all the time
      It's alright
      Yeah, it's alright

      And when the sun comes up
      Like it always does
      It's whatever forever
      You know we're falling together
      And when the sun comes up
      Like it always does
      It's whatever forever
      And it just keeps getting better

      Whoa, oh, oh, it keeps getting better
      Whoa, oh, oh, (I said) it keeps getting better
      Whoa, oh, oh, it keeps getting better
      Whoa, oh, oh, it's whatever forever

      And when the sun comes up
      Like it always does
      It's whatever forever
      You know we're falling together
      And when the sun comes up
      Like it always does
      It's whatever forever
      And it just keeps getting better

      And when the sun comes up
      Like it always does
      It's whatever forever
      You know we're falling together
      And when the sun comes up
      Like it always does
      It's whatever forever
      And it just keeps getting better

      I went and wrote this song
      So you don't have to get a job
      So just keep laying there and smiling in your sleep" },
    { album_id: 3, name: "I'm Good", ord: 2, kind: "standard", lyrics: "I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good

      Trying to figure out who I am
      Or who I’m supposed to be
      Feel good about where I stand
      So I can make the most of me-I’m
      Coming back down from space
      A million miles away
      There’s a lot of love in this place
      (Oh) and I’m just trying to say

      I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good

      I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good

      It’s been a long time living this way
      Worrying what people say
      Feeling like I won’t fit in
      But I won’t give up, no I won’t give in
      We’re looking for something more
      What you’re really looking for
      It’s been with you since you were born
      Since you were born

      I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good

      I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good

      You only live once
      I’m good with myself
      I’m there for my friends
      Til the very end
      You only live once
      I’m good with myself
      I’m there for my friends
      Til the very end

      I wanna see another love revolution
      Find a way to be a better person
      If we come together like we should
      We could all be good

      I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good

      I’m good, I’m good, I’m good, I’m good
      Living life just like I should
      Wouldn’t change it if I could
      I’m good, I’m good, I’m good" },
    { album_id: 3, name: "Bad Dream", ord: 3, kind: "standard", lyrics: "With every beautiful new sight
      I see that perfect golden light
      Against your eyes
      Tried to hold it up
      Try to live it up
      Seal it with your touch
      Everything at once

      You only get what you put into this life
      So how could anybody be living in a bad dream

      Ooh, when you got this open road
      And the sun is shining
      How could anybody be living in a bad dream
      Ooh, with the top down drivin' slow
      All the love that
      I know
      How could anybody be living in a bad dream

      Last night my dreams were on TV
      I stepped away to watch the world play out in front of me
      Sorrow in your eyes isn't a real life
      Its good enough for me, good enough for tonight

      You only get what you put into this life
      So how could anybody be living in a bad dream

      Ooh, when you got this open road
      And the sun is shining
      How could anybody be living in a bad dream
      Ooh, with the top down drivin' slow
      All the love that
      I know
      How could anybody be living in a bad dream

      Dream
      Dream
      Dream

      Dream, dream, dream
      Dream, dream, dream
      Dream, dream, dream

      Ooh, when you got this open road
      And the sun is shining
      How could anybody be living in a bad dream
      Ooh, with the top down drivin' slow
      All the love that
      I know
      How could anybody be living in a bad dream

      Dream, dream, dream
      Dream, dream, dream
      Dream, dream, dream" }
  ]
)

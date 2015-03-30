## Foreword
Castle always be conquered from inside.System,however powerful it is ,is replied on human control.

Let's share a case below to see how they hack a developer's system by using the holes of App repository.

## App repository

Developers use App repository every day. apt-get, brew, yum, npm... Like The AppStore on command,  make your tools and dependents installing easy.

Most of them have similar principle inside. Now we are talking about the NodeJS App repositoy —— [NPM](https://www.npmjs.com/) 's security testing.

## NPM PLATFORM

Fortunately we have NPM Platform to be responsible for communication, without that NodeJS is isolated almost like WScript.

Developers install the wanted dependents and repositoy by NPM.In receint years, thousands of NodeJS Apps are published with million tims of downloads on NPM. Is there any hidden security problem among so many users?

## Hacking Repository 

It is much easier to consider that once NPM account and key is hacked the invaders can publish new version of projects.Normal user might install dirty script when updating programms.

However,it is not easty to hack an account.It is also easy to be discovered once a very active projects are 

## Repository Entrapment

The invaders can use a similar name with active programm,replacing uglify-js as uglifyjs,eg.If the user spell wrong word,he will install fake programm.

Compared traditional worms,NodeJS,newly created worm with flexible language,will have fewer defensive programmes.

## Invasion During Installing

Will the invasion be stopped,if user find they install wrong program,and uninstall it before running it?

Acctually,NPM provide powerful function,even run        [during installing process].(https://docs.npmjs.com/misc/scripts)

![](http://images.cnitblog.com/blog2015/273626/201503/121718133081850.png)

In 'scripts' field, can define extension command.

For example, 'postinstall' can auto run just after package installing.

![](http://images.cnitblog.com/blog2015/273626/201503/121718247309572.png)

In this case,if the user type in npm install XXX,the system might be hacked.

It sounds like a myracle.A active fake verion apps,untested,will have hundreds time of installment(mistakely installment).They are potential valued custmers.

##  Continuity Invasion

Once developer's system is controlled,the result will be much serious than you can imaging.More horrible things will happen except informationg leaking out.

Taking uglify-js for exapmle,if the developer install fishing version,what will happen?

The entrapment version itsself is a compress tools like translating the tested source codes into blackbox programs which is unreadable.The the hacker manipulate this phase,then the sourse codes,even tested and approved,will be disastrous.

possibly,entrapment might insert a hidden xss among compressed script,which is hard to discover for developers.Once script is published,thousands of users online will be doomed!

![](http://images.cnitblog.com/blog2015/273626/201503/121718368555910.png)

The invader can conquer this castle with no effort.

Of cousse,they can contagion web,and other customer end.Some open sourse repository with little intension,or            might be the hidden place for worms.

## Entrapment Promotions

To expand the contagion circle,the invaders might actively promote their own entrapment apps.

of course,this kind of promotion is not very obvious.Ousiders might not feel its true intention at all.

Invaders can forword some hot topics and replacing the demonstration link into his own entrapment program.So the viewers will be controled without any notice.

More directly,they promote their own apps coupled with some cool words and photos.Some curious people will be lured and hacked.

## Summary

Other than NPM,some repository without approval,might face the risk if entrapment problem.

So you must be cautious when install Apps.Apps with forgotten name,must be checked before installing.

You must be also cautious when insalling some unknown apps.After all,insalling an app equals to open an app!


#testing stepwise regression with all interactions

min.model <- lm(log(wage)~1, data=data)

full.model <- formula(lm(log(wage)~I( edu )+
                           I( exp )+
                           I( edu* exp )+
                           I( city )+
                           I( edu* city )+
                           I( exp* city )+
                           I( edu* exp* city )+
                           I( reg )+
                           I( edu* reg )+
                           I( exp* reg )+
                           I( edu* exp* reg )+
                           I( city* reg )+
                           I( edu* city* reg )+
                           I( exp* city* reg )+
                           I( edu* exp* city* reg )+
                           I( race )+
                           I( edu* race )+
                           I( exp* race )+
                           I( edu* exp* race )+
                           I( city* race )+
                           I( edu* city* race )+
                           I( exp* city* race )+
                           I( edu* exp* city* race )+
                           I( reg* race )+
                           I( edu* reg* race )+
                           I( exp* reg* race )+
                           I( edu* exp* reg* race )+
                           I( city* reg* race )+
                           I( edu* city* reg* race )+
                           I( exp* city* reg* race )+
                           I( edu* exp* city* reg* race )+
                           I( deg )+
                           I( edu* deg )+
                           I( exp* deg )+
                           I( edu* exp* deg )+
                           I( city* deg )+
                           I( edu* city* deg )+
                           I( exp* city* deg )+
                           I( edu* exp* city* deg )+
                           I( reg* deg )+
                           I( edu* reg* deg )+
                           I( exp* reg* deg )+
                           I( edu* exp* reg* deg )+
                           I( city* reg* deg )+
                           I( edu* city* reg* deg )+
                           I( exp* city* reg* deg )+
                           I( edu* exp* city* reg* deg )+
                           I( race* deg )+
                           I( edu* race* deg )+
                           I( exp* race* deg )+
                           I( edu* exp* race* deg )+
                           I( city* race* deg )+
                           I( edu* city* race* deg )+
                           I( exp* city* race* deg )+
                           I( edu* exp* city* race* deg )+
                           I( reg* race* deg )+
                           I( edu* reg* race* deg )+
                           I( exp* reg* race* deg )+
                           I( edu* exp* reg* race* deg )+
                           I( city* reg* race* deg )+
                           I( edu* city* reg* race* deg )+
                           I( exp* city* reg* race* deg )+
                           I( edu* exp* city* reg* race* deg )+
                           I( com )+
                           I( edu* com )+
                           I( exp* com )+
                           I( edu* exp* com )+
                           I( city* com )+
                           I( edu* city* com )+
                           I( exp* city* com )+
                           I( edu* exp* city* com )+
                           I( reg* com )+
                           I( edu* reg* com )+
                           I( exp* reg* com )+
                           I( edu* exp* reg* com )+
                           I( city* reg* com )+
                           I( edu* city* reg* com )+
                           I( exp* city* reg* com )+
                           I( edu* exp* city* reg* com )+
                           I( race* com )+
                           I( edu* race* com )+
                           I( exp* race* com )+
                           I( edu* exp* race* com )+
                           I( city* race* com )+
                           I( edu* city* race* com )+
                           I( exp* city* race* com )+
                           I( edu* exp* city* race* com )+
                           I( reg* race* com )+
                           I( edu* reg* race* com )+
                           I( exp* reg* race* com )+
                           I( edu* exp* reg* race* com )+
                           I( city* reg* race* com )+
                           I( edu* city* reg* race* com )+
                           I( exp* city* reg* race* com )+
                           I( edu* exp* city* reg* race* com )+
                           I( deg* com )+
                           I( edu* deg* com )+
                           I( exp* deg* com )+
                           I( edu* exp* deg* com )+
                           I( city* deg* com )+
                           I( edu* city* deg* com )+
                           I( exp* city* deg* com )+
                           I( edu* exp* city* deg* com )+
                           I( reg* deg* com )+
                           I( edu* reg* deg* com )+
                           I( exp* reg* deg* com )+
                           I( edu* exp* reg* deg* com )+
                           I( city* reg* deg* com )+
                           I( edu* city* reg* deg* com )+
                           I( exp* city* reg* deg* com )+
                           I( edu* exp* city* reg* deg* com )+
                           I( race* deg* com )+
                           I( edu* race* deg* com )+
                           I( exp* race* deg* com )+
                           I( edu* exp* race* deg* com )+
                           I( city* race* deg* com )+
                           I( edu* city* race* deg* com )+
                           I( exp* city* race* deg* com )+
                           I( edu* exp* city* race* deg* com )+
                           I( reg* race* deg* com )+
                           I( edu* reg* race* deg* com )+
                           I( exp* reg* race* deg* com )+
                           I( edu* exp* reg* race* deg* com )+
                           I( city* reg* race* deg* com )+
                           I( edu* city* reg* race* deg* com )+
                           I( exp* city* reg* race* deg* com )+
                           I( edu* exp* city* reg* race* deg* com )+
                           I( emp )+
                           I( edu* emp )+
                           I( exp* emp )+
                           I( edu* exp* emp )+
                           I( city* emp )+
                           I( edu* city* emp )+
                           I( exp* city* emp )+
                           I( edu* exp* city* emp )+
                           I( reg* emp )+
                           I( edu* reg* emp )+
                           I( exp* reg* emp )+
                           I( edu* exp* reg* emp )+
                           I( city* reg* emp )+
                           I( edu* city* reg* emp )+
                           I( exp* city* reg* emp )+
                           I( edu* exp* city* reg* emp )+
                           I( race* emp )+
                           I( edu* race* emp )+
                           I( exp* race* emp )+
                           I( edu* exp* race* emp )+
                           I( city* race* emp )+
                           I( edu* city* race* emp )+
                           I( exp* city* race* emp )+
                           I( edu* exp* city* race* emp )+
                           I( reg* race* emp )+
                           I( edu* reg* race* emp )+
                           I( exp* reg* race* emp )+
                           I( edu* exp* reg* race* emp )+
                           I( city* reg* race* emp )+
                           I( edu* city* reg* race* emp )+
                           I( exp* city* reg* race* emp )+
                           I( edu* exp* city* reg* race* emp )+
                           I( deg* emp )+
                           I( edu* deg* emp )+
                           I( exp* deg* emp )+
                           I( edu* exp* deg* emp )+
                           I( city* deg* emp )+
                           I( edu* city* deg* emp )+
                           I( exp* city* deg* emp )+
                           I( edu* exp* city* deg* emp )+
                           I( reg* deg* emp )+
                           I( edu* reg* deg* emp )+
                           I( exp* reg* deg* emp )+
                           I( edu* exp* reg* deg* emp )+
                           I( city* reg* deg* emp )+
                           I( edu* city* reg* deg* emp )+
                           I( exp* city* reg* deg* emp )+
                           I( edu* exp* city* reg* deg* emp )+
                           I( race* deg* emp )+
                           I( edu* race* deg* emp )+
                           I( exp* race* deg* emp )+
                           I( edu* exp* race* deg* emp )+
                           I( city* race* deg* emp )+
                           I( edu* city* race* deg* emp )+
                           I( exp* city* race* deg* emp )+
                           I( edu* exp* city* race* deg* emp )+
                           I( reg* race* deg* emp )+
                           I( edu* reg* race* deg* emp )+
                           I( exp* reg* race* deg* emp )+
                           I( edu* exp* reg* race* deg* emp )+
                           I( city* reg* race* deg* emp )+
                           I( edu* city* reg* race* deg* emp )+
                           I( exp* city* reg* race* deg* emp )+
                           I( edu* exp* city* reg* race* deg* emp )+
                           I( com* emp )+
                           I( edu* com* emp )+
                           I( exp* com* emp )+
                           I( edu* exp* com* emp )+
                           I( city* com* emp )+
                           I( edu* city* com* emp )+
                           I( exp* city* com* emp )+
                           I( edu* exp* city* com* emp )+
                           I( reg* com* emp )+
                           I( edu* reg* com* emp )+
                           I( exp* reg* com* emp )+
                           I( edu* exp* reg* com* emp )+
                           I( city* reg* com* emp )+
                           I( edu* city* reg* com* emp )+
                           I( exp* city* reg* com* emp )+
                           I( edu* exp* city* reg* com* emp )+
                           I( race* com* emp )+
                           I( edu* race* com* emp )+
                           I( exp* race* com* emp )+
                           I( edu* exp* race* com* emp )+
                           I( city* race* com* emp )+
                           I( edu* city* race* com* emp )+
                           I( exp* city* race* com* emp )+
                           I( edu* exp* city* race* com* emp )+
                           I( reg* race* com* emp )+
                           I( edu* reg* race* com* emp )+
                           I( exp* reg* race* com* emp )+
                           I( edu* exp* reg* race* com* emp )+
                           I( city* reg* race* com* emp )+
                           I( edu* city* reg* race* com* emp )+
                           I( exp* city* reg* race* com* emp )+
                           I( edu* exp* city* reg* race* com* emp )+
                           I( deg* com* emp )+
                           I( edu* deg* com* emp )+
                           I( exp* deg* com* emp )+
                           I( edu* exp* deg* com* emp )+
                           I( city* deg* com* emp )+
                           I( edu* city* deg* com* emp )+
                           I( exp* city* deg* com* emp )+
                           I( edu* exp* city* deg* com* emp )+
                           I( reg* deg* com* emp )+
                           I( edu* reg* deg* com* emp )+
                           I( exp* reg* deg* com* emp )+
                           I( edu* exp* reg* deg* com* emp )+
                           I( city* reg* deg* com* emp )+
                           I( edu* city* reg* deg* com* emp )+
                           I( exp* city* reg* deg* com* emp )+
                           I( edu* exp* city* reg* deg* com* emp )+
                           I( race* deg* com* emp )+
                           I( edu* race* deg* com* emp )+
                           I( exp* race* deg* com* emp )+
                           I( edu* exp* race* deg* com* emp )+
                           I( city* race* deg* com* emp )+
                           I( edu* city* race* deg* com* emp )+
                           I( exp* city* race* deg* com* emp )+
                           I( edu* exp* city* race* deg* com* emp )+
                           I( reg* race* deg* com* emp )+
                           I( edu* reg* race* deg* com* emp )+
                           I( exp* reg* race* deg* com* emp )+
                           I( edu* exp* reg* race* deg* com* emp )+
                           I( city* reg* race* deg* com* emp )+
                           I( edu* city* reg* race* deg* com* emp )+
                           I( exp* city* reg* race* deg* com* emp )+
                           I( edu* exp* city* reg* race* deg* com* emp )+
                           I( edu^2 )+
                           I( edu* edu^2 )+
                           I( exp* edu^2 )+
                           I( edu* exp* edu^2 )+
                           I( city* edu^2 )+
                           I( edu* city* edu^2 )+
                           I( exp* city* edu^2 )+
                           I( edu* exp* city* edu^2 )+
                           I( reg* edu^2 )+
                           I( edu* reg* edu^2 )+
                           I( exp* reg* edu^2 )+
                           I( edu* exp* reg* edu^2 )+
                           I( city* reg* edu^2 )+
                           I( edu* city* reg* edu^2 )+
                           I( exp* city* reg* edu^2 )+
                           I( edu* exp* city* reg* edu^2 )+
                           I( race* edu^2 )+
                           I( edu* race* edu^2 )+
                           I( exp* race* edu^2 )+
                           I( edu* exp* race* edu^2 )+
                           I( city* race* edu^2 )+
                           I( edu* city* race* edu^2 )+
                           I( exp* city* race* edu^2 )+
                           I( edu* exp* city* race* edu^2 )+
                           I( reg* race* edu^2 )+
                           I( edu* reg* race* edu^2 )+
                           I( exp* reg* race* edu^2 )+
                           I( edu* exp* reg* race* edu^2 )+
                           I( city* reg* race* edu^2 )+
                           I( edu* city* reg* race* edu^2 )+
                           I( exp* city* reg* race* edu^2 )+
                           I( edu* exp* city* reg* race* edu^2 )+
                           I( deg* edu^2 )+
                           I( edu* deg* edu^2 )+
                           I( exp* deg* edu^2 )+
                           I( edu* exp* deg* edu^2 )+
                           I( city* deg* edu^2 )+
                           I( edu* city* deg* edu^2 )+
                           I( exp* city* deg* edu^2 )+
                           I( edu* exp* city* deg* edu^2 )+
                           I( reg* deg* edu^2 )+
                           I( edu* reg* deg* edu^2 )+
                           I( exp* reg* deg* edu^2 )+
                           I( edu* exp* reg* deg* edu^2 )+
                           I( city* reg* deg* edu^2 )+
                           I( edu* city* reg* deg* edu^2 )+
                           I( exp* city* reg* deg* edu^2 )+
                           I( edu* exp* city* reg* deg* edu^2 )+
                           I( race* deg* edu^2 )+
                           I( edu* race* deg* edu^2 )+
                           I( exp* race* deg* edu^2 )+
                           I( edu* exp* race* deg* edu^2 )+
                           I( city* race* deg* edu^2 )+
                           I( edu* city* race* deg* edu^2 )+
                           I( exp* city* race* deg* edu^2 )+
                           I( edu* exp* city* race* deg* edu^2 )+
                           I( reg* race* deg* edu^2 )+
                           I( edu* reg* race* deg* edu^2 )+
                           I( exp* reg* race* deg* edu^2 )+
                           I( edu* exp* reg* race* deg* edu^2 )+
                           I( city* reg* race* deg* edu^2 )+
                           I( edu* city* reg* race* deg* edu^2 )+
                           I( exp* city* reg* race* deg* edu^2 )+
                           I( edu* exp* city* reg* race* deg* edu^2 )+
                           I( com* edu^2 )+
                           I( edu* com* edu^2 )+
                           I( exp* com* edu^2 )+
                           I( edu* exp* com* edu^2 )+
                           I( city* com* edu^2 )+
                           I( edu* city* com* edu^2 )+
                           I( exp* city* com* edu^2 )+
                           I( edu* exp* city* com* edu^2 )+
                           I( reg* com* edu^2 )+
                           I( edu* reg* com* edu^2 )+
                           I( exp* reg* com* edu^2 )+
                           I( edu* exp* reg* com* edu^2 )+
                           I( city* reg* com* edu^2 )+
                           I( edu* city* reg* com* edu^2 )+
                           I( exp* city* reg* com* edu^2 )+
                           I( edu* exp* city* reg* com* edu^2 )+
                           I( race* com* edu^2 )+
                           I( edu* race* com* edu^2 )+
                           I( exp* race* com* edu^2 )+
                           I( edu* exp* race* com* edu^2 )+
                           I( city* race* com* edu^2 )+
                           I( edu* city* race* com* edu^2 )+
                           I( exp* city* race* com* edu^2 )+
                           I( edu* exp* city* race* com* edu^2 )+
                           I( reg* race* com* edu^2 )+
                           I( edu* reg* race* com* edu^2 )+
                           I( exp* reg* race* com* edu^2 )+
                           I( edu* exp* reg* race* com* edu^2 )+
                           I( city* reg* race* com* edu^2 )+
                           I( edu* city* reg* race* com* edu^2 )+
                           I( exp* city* reg* race* com* edu^2 )+
                           I( edu* exp* city* reg* race* com* edu^2 )+
                           I( deg* com* edu^2 )+
                           I( edu* deg* com* edu^2 )+
                           I( exp* deg* com* edu^2 )+
                           I( edu* exp* deg* com* edu^2 )+
                           I( city* deg* com* edu^2 )+
                           I( edu* city* deg* com* edu^2 )+
                           I( exp* city* deg* com* edu^2 )+
                           I( edu* exp* city* deg* com* edu^2 )+
                           I( reg* deg* com* edu^2 )+
                           I( edu* reg* deg* com* edu^2 )+
                           I( exp* reg* deg* com* edu^2 )+
                           I( edu* exp* reg* deg* com* edu^2 )+
                           I( city* reg* deg* com* edu^2 )+
                           I( edu* city* reg* deg* com* edu^2 )+
                           I( exp* city* reg* deg* com* edu^2 )+
                           I( edu* exp* city* reg* deg* com* edu^2 )+
                           I( race* deg* com* edu^2 )+
                           I( edu* race* deg* com* edu^2 )+
                           I( exp* race* deg* com* edu^2 )+
                           I( edu* exp* race* deg* com* edu^2 )+
                           I( city* race* deg* com* edu^2 )+
                           I( edu* city* race* deg* com* edu^2 )+
                           I( exp* city* race* deg* com* edu^2 )+
                           I( edu* exp* city* race* deg* com* edu^2 )+
                           I( reg* race* deg* com* edu^2 )+
                           I( edu* reg* race* deg* com* edu^2 )+
                           I( exp* reg* race* deg* com* edu^2 )+
                           I( edu* exp* reg* race* deg* com* edu^2 )+
                           I( city* reg* race* deg* com* edu^2 )+
                           I( edu* city* reg* race* deg* com* edu^2 )+
                           I( exp* city* reg* race* deg* com* edu^2 )+
                           I( edu* exp* city* reg* race* deg* com* edu^2 )+
                           I( emp* edu^2 )+
                           I( edu* emp* edu^2 )+
                           I( exp* emp* edu^2 )+
                           I( edu* exp* emp* edu^2 )+
                           I( city* emp* edu^2 )+
                           I( edu* city* emp* edu^2 )+
                           I( exp* city* emp* edu^2 )+
                           I( edu* exp* city* emp* edu^2 )+
                           I( reg* emp* edu^2 )+
                           I( edu* reg* emp* edu^2 )+
                           I( exp* reg* emp* edu^2 )+
                           I( edu* exp* reg* emp* edu^2 )+
                           I( city* reg* emp* edu^2 )+
                           I( edu* city* reg* emp* edu^2 )+
                           I( exp* city* reg* emp* edu^2 )+
                           I( edu* exp* city* reg* emp* edu^2 )+
                           I( race* emp* edu^2 )+
                           I( edu* race* emp* edu^2 )+
                           I( exp* race* emp* edu^2 )+
                           I( edu* exp* race* emp* edu^2 )+
                           I( city* race* emp* edu^2 )+
                           I( edu* city* race* emp* edu^2 )+
                           I( exp* city* race* emp* edu^2 )+
                           I( edu* exp* city* race* emp* edu^2 )+
                           I( reg* race* emp* edu^2 )+
                           I( edu* reg* race* emp* edu^2 )+
                           I( exp* reg* race* emp* edu^2 )+
                           I( edu* exp* reg* race* emp* edu^2 )+
                           I( city* reg* race* emp* edu^2 )+
                           I( edu* city* reg* race* emp* edu^2 )+
                           I( exp* city* reg* race* emp* edu^2 )+
                           I( edu* exp* city* reg* race* emp* edu^2 )+
                           I( deg* emp* edu^2 )+
                           I( edu* deg* emp* edu^2 )+
                           I( exp* deg* emp* edu^2 )+
                           I( edu* exp* deg* emp* edu^2 )+
                           I( city* deg* emp* edu^2 )+
                           I( edu* city* deg* emp* edu^2 )+
                           I( exp* city* deg* emp* edu^2 )+
                           I( edu* exp* city* deg* emp* edu^2 )+
                           I( reg* deg* emp* edu^2 )+
                           I( edu* reg* deg* emp* edu^2 )+
                           I( exp* reg* deg* emp* edu^2 )+
                           I( edu* exp* reg* deg* emp* edu^2 )+
                           I( city* reg* deg* emp* edu^2 )+
                           I( edu* city* reg* deg* emp* edu^2 )+
                           I( exp* city* reg* deg* emp* edu^2 )+
                           I( edu* exp* city* reg* deg* emp* edu^2 )+
                           I( race* deg* emp* edu^2 )+
                           I( edu* race* deg* emp* edu^2 )+
                           I( exp* race* deg* emp* edu^2 )+
                           I( edu* exp* race* deg* emp* edu^2 )+
                           I( city* race* deg* emp* edu^2 )+
                           I( edu* city* race* deg* emp* edu^2 )+
                           I( exp* city* race* deg* emp* edu^2 )+
                           I( edu* exp* city* race* deg* emp* edu^2 )+
                           I( reg* race* deg* emp* edu^2 )+
                           I( edu* reg* race* deg* emp* edu^2 )+
                           I( exp* reg* race* deg* emp* edu^2 )+
                           I( edu* exp* reg* race* deg* emp* edu^2 )+
                           I( city* reg* race* deg* emp* edu^2 )+
                           I( edu* city* reg* race* deg* emp* edu^2 )+
                           I( exp* city* reg* race* deg* emp* edu^2 )+
                           I( edu* exp* city* reg* race* deg* emp* edu^2 )+
                           I( com* emp* edu^2 )+
                           I( edu* com* emp* edu^2 )+
                           I( exp* com* emp* edu^2 )+
                           I( edu* exp* com* emp* edu^2 )+
                           I( city* com* emp* edu^2 )+
                           I( edu* city* com* emp* edu^2 )+
                           I( exp* city* com* emp* edu^2 )+
                           I( edu* exp* city* com* emp* edu^2 )+
                           I( reg* com* emp* edu^2 )+
                           I( edu* reg* com* emp* edu^2 )+
                           I( exp* reg* com* emp* edu^2 )+
                           I( edu* exp* reg* com* emp* edu^2 )+
                           I( city* reg* com* emp* edu^2 )+
                           I( edu* city* reg* com* emp* edu^2 )+
                           I( exp* city* reg* com* emp* edu^2 )+
                           I( edu* exp* city* reg* com* emp* edu^2 )+
                           I( race* com* emp* edu^2 )+
                           I( edu* race* com* emp* edu^2 )+
                           I( exp* race* com* emp* edu^2 )+
                           I( edu* exp* race* com* emp* edu^2 )+
                           I( city* race* com* emp* edu^2 )+
                           I( edu* city* race* com* emp* edu^2 )+
                           I( exp* city* race* com* emp* edu^2 )+
                           I( edu* exp* city* race* com* emp* edu^2 )+
                           I( reg* race* com* emp* edu^2 )+
                           I( edu* reg* race* com* emp* edu^2 )+
                           I( exp* reg* race* com* emp* edu^2 )+
                           I( edu* exp* reg* race* com* emp* edu^2 )+
                           I( city* reg* race* com* emp* edu^2 )+
                           I( edu* city* reg* race* com* emp* edu^2 )+
                           I( exp* city* reg* race* com* emp* edu^2 )+
                           I( edu* exp* city* reg* race* com* emp* edu^2 )+
                           I( deg* com* emp* edu^2 )+
                           I( edu* deg* com* emp* edu^2 )+
                           I( exp* deg* com* emp* edu^2 )+
                           I( edu* exp* deg* com* emp* edu^2 )+
                           I( city* deg* com* emp* edu^2 )+
                           I( edu* city* deg* com* emp* edu^2 )+
                           I( exp* city* deg* com* emp* edu^2 )+
                           I( edu* exp* city* deg* com* emp* edu^2 )+
                           I( reg* deg* com* emp* edu^2 )+
                           I( edu* reg* deg* com* emp* edu^2 )+
                           I( exp* reg* deg* com* emp* edu^2 )+
                           I( edu* exp* reg* deg* com* emp* edu^2 )+
                           I( city* reg* deg* com* emp* edu^2 )+
                           I( edu* city* reg* deg* com* emp* edu^2 )+
                           I( exp* city* reg* deg* com* emp* edu^2 )+
                           I( edu* exp* city* reg* deg* com* emp* edu^2 )+
                           I( race* deg* com* emp* edu^2 )+
                           I( edu* race* deg* com* emp* edu^2 )+
                           I( exp* race* deg* com* emp* edu^2 )+
                           I( edu* exp* race* deg* com* emp* edu^2 )+
                           I( city* race* deg* com* emp* edu^2 )+
                           I( edu* city* race* deg* com* emp* edu^2 )+
                           I( exp* city* race* deg* com* emp* edu^2 )+
                           I( edu* exp* city* race* deg* com* emp* edu^2 )+
                           I( reg* race* deg* com* emp* edu^2 )+
                           I( edu* reg* race* deg* com* emp* edu^2 )+
                           I( exp* reg* race* deg* com* emp* edu^2 )+
                           I( edu* exp* reg* race* deg* com* emp* edu^2 )+
                           I( city* reg* race* deg* com* emp* edu^2 )+
                           I( edu* city* reg* race* deg* com* emp* edu^2 )+
                           I( exp* city* reg* race* deg* com* emp* edu^2 )+
                           I( edu* exp* city* reg* race* deg* com* emp* edu^2 )+
                           I( exp^2 )+
                           I( edu* exp^2 )+
                           I( exp* exp^2 )+
                           I( edu* exp* exp^2 )+
                           I( city* exp^2 )+
                           I( edu* city* exp^2 )+
                           I( exp* city* exp^2 )+
                           I( edu* exp* city* exp^2 )+
                           I( reg* exp^2 )+
                           I( edu* reg* exp^2 )+
                           I( exp* reg* exp^2 )+
                           I( edu* exp* reg* exp^2 )+
                           I( city* reg* exp^2 )+
                           I( edu* city* reg* exp^2 )+
                           I( exp* city* reg* exp^2 )+
                           I( edu* exp* city* reg* exp^2 )+
                           I( race* exp^2 )+
                           I( edu* race* exp^2 )+
                           I( exp* race* exp^2 )+
                           I( edu* exp* race* exp^2 )+
                           I( city* race* exp^2 )+
                           I( edu* city* race* exp^2 )+
                           I( exp* city* race* exp^2 )+
                           I( edu* exp* city* race* exp^2 )+
                           I( reg* race* exp^2 )+
                           I( edu* reg* race* exp^2 )+
                           I( exp* reg* race* exp^2 )+
                           I( edu* exp* reg* race* exp^2 )+
                           I( city* reg* race* exp^2 )+
                           I( edu* city* reg* race* exp^2 )+
                           I( exp* city* reg* race* exp^2 )+
                           I( edu* exp* city* reg* race* exp^2 )+
                           I( deg* exp^2 )+
                           I( edu* deg* exp^2 )+
                           I( exp* deg* exp^2 )+
                           I( edu* exp* deg* exp^2 )+
                           I( city* deg* exp^2 )+
                           I( edu* city* deg* exp^2 )+
                           I( exp* city* deg* exp^2 )+
                           I( edu* exp* city* deg* exp^2 )+
                           I( reg* deg* exp^2 )+
                           I( edu* reg* deg* exp^2 )+
                           I( exp* reg* deg* exp^2 )+
                           I( edu* exp* reg* deg* exp^2 )+
                           I( city* reg* deg* exp^2 )+
                           I( edu* city* reg* deg* exp^2 )+
                           I( exp* city* reg* deg* exp^2 )+
                           I( edu* exp* city* reg* deg* exp^2 )+
                           I( race* deg* exp^2 )+
                           I( edu* race* deg* exp^2 )+
                           I( exp* race* deg* exp^2 )+
                           I( edu* exp* race* deg* exp^2 )+
                           I( city* race* deg* exp^2 )+
                           I( edu* city* race* deg* exp^2 )+
                           I( exp* city* race* deg* exp^2 )+
                           I( edu* exp* city* race* deg* exp^2 )+
                           I( reg* race* deg* exp^2 )+
                           I( edu* reg* race* deg* exp^2 )+
                           I( exp* reg* race* deg* exp^2 )+
                           I( edu* exp* reg* race* deg* exp^2 )+
                           I( city* reg* race* deg* exp^2 )+
                           I( edu* city* reg* race* deg* exp^2 )+
                           I( exp* city* reg* race* deg* exp^2 )+
                           I( edu* exp* city* reg* race* deg* exp^2 )+
                           I( com* exp^2 )+
                           I( edu* com* exp^2 )+
                           I( exp* com* exp^2 )+
                           I( edu* exp* com* exp^2 )+
                           I( city* com* exp^2 )+
                           I( edu* city* com* exp^2 )+
                           I( exp* city* com* exp^2 )+
                           I( edu* exp* city* com* exp^2 )+
                           I( reg* com* exp^2 )+
                           I( edu* reg* com* exp^2 )+
                           I( exp* reg* com* exp^2 )+
                           I( edu* exp* reg* com* exp^2 )+
                           I( city* reg* com* exp^2 )+
                           I( edu* city* reg* com* exp^2 )+
                           I( exp* city* reg* com* exp^2 )+
                           I( edu* exp* city* reg* com* exp^2 )+
                           I( race* com* exp^2 )+
                           I( edu* race* com* exp^2 )+
                           I( exp* race* com* exp^2 )+
                           I( edu* exp* race* com* exp^2 )+
                           I( city* race* com* exp^2 )+
                           I( edu* city* race* com* exp^2 )+
                           I( exp* city* race* com* exp^2 )+
                           I( edu* exp* city* race* com* exp^2 )+
                           I( reg* race* com* exp^2 )+
                           I( edu* reg* race* com* exp^2 )+
                           I( exp* reg* race* com* exp^2 )+
                           I( edu* exp* reg* race* com* exp^2 )+
                           I( city* reg* race* com* exp^2 )+
                           I( edu* city* reg* race* com* exp^2 )+
                           I( exp* city* reg* race* com* exp^2 )+
                           I( edu* exp* city* reg* race* com* exp^2 )+
                           I( deg* com* exp^2 )+
                           I( edu* deg* com* exp^2 )+
                           I( exp* deg* com* exp^2 )+
                           I( edu* exp* deg* com* exp^2 )+
                           I( city* deg* com* exp^2 )+
                           I( edu* city* deg* com* exp^2 )+
                           I( exp* city* deg* com* exp^2 )+
                           I( edu* exp* city* deg* com* exp^2 )+
                           I( reg* deg* com* exp^2 )+
                           I( edu* reg* deg* com* exp^2 )+
                           I( exp* reg* deg* com* exp^2 )+
                           I( edu* exp* reg* deg* com* exp^2 )+
                           I( city* reg* deg* com* exp^2 )+
                           I( edu* city* reg* deg* com* exp^2 )+
                           I( exp* city* reg* deg* com* exp^2 )+
                           I( edu* exp* city* reg* deg* com* exp^2 )+
                           I( race* deg* com* exp^2 )+
                           I( edu* race* deg* com* exp^2 )+
                           I( exp* race* deg* com* exp^2 )+
                           I( edu* exp* race* deg* com* exp^2 )+
                           I( city* race* deg* com* exp^2 )+
                           I( edu* city* race* deg* com* exp^2 )+
                           I( exp* city* race* deg* com* exp^2 )+
                           I( edu* exp* city* race* deg* com* exp^2 )+
                           I( reg* race* deg* com* exp^2 )+
                           I( edu* reg* race* deg* com* exp^2 )+
                           I( exp* reg* race* deg* com* exp^2 )+
                           I( edu* exp* reg* race* deg* com* exp^2 )+
                           I( city* reg* race* deg* com* exp^2 )+
                           I( edu* city* reg* race* deg* com* exp^2 )+
                           I( exp* city* reg* race* deg* com* exp^2 )+
                           I( edu* exp* city* reg* race* deg* com* exp^2 )+
                           I( emp* exp^2 )+
                           I( edu* emp* exp^2 )+
                           I( exp* emp* exp^2 )+
                           I( edu* exp* emp* exp^2 )+
                           I( city* emp* exp^2 )+
                           I( edu* city* emp* exp^2 )+
                           I( exp* city* emp* exp^2 )+
                           I( edu* exp* city* emp* exp^2 )+
                           I( reg* emp* exp^2 )+
                           I( edu* reg* emp* exp^2 )+
                           I( exp* reg* emp* exp^2 )+
                           I( edu* exp* reg* emp* exp^2 )+
                           I( city* reg* emp* exp^2 )+
                           I( edu* city* reg* emp* exp^2 )+
                           I( exp* city* reg* emp* exp^2 )+
                           I( edu* exp* city* reg* emp* exp^2 )+
                           I( race* emp* exp^2 )+
                           I( edu* race* emp* exp^2 )+
                           I( exp* race* emp* exp^2 )+
                           I( edu* exp* race* emp* exp^2 )+
                           I( city* race* emp* exp^2 )+
                           I( edu* city* race* emp* exp^2 )+
                           I( exp* city* race* emp* exp^2 )+
                           I( edu* exp* city* race* emp* exp^2 )+
                           I( reg* race* emp* exp^2 )+
                           I( edu* reg* race* emp* exp^2 )+
                           I( exp* reg* race* emp* exp^2 )+
                           I( edu* exp* reg* race* emp* exp^2 )+
                           I( city* reg* race* emp* exp^2 )+
                           I( edu* city* reg* race* emp* exp^2 )+
                           I( exp* city* reg* race* emp* exp^2 )+
                           I( edu* exp* city* reg* race* emp* exp^2 )+
                           I( deg* emp* exp^2 )+
                           I( edu* deg* emp* exp^2 )+
                           I( exp* deg* emp* exp^2 )+
                           I( edu* exp* deg* emp* exp^2 )+
                           I( city* deg* emp* exp^2 )+
                           I( edu* city* deg* emp* exp^2 )+
                           I( exp* city* deg* emp* exp^2 )+
                           I( edu* exp* city* deg* emp* exp^2 )+
                           I( reg* deg* emp* exp^2 )+
                           I( edu* reg* deg* emp* exp^2 )+
                           I( exp* reg* deg* emp* exp^2 )+
                           I( edu* exp* reg* deg* emp* exp^2 )+
                           I( city* reg* deg* emp* exp^2 )+
                           I( edu* city* reg* deg* emp* exp^2 )+
                           I( exp* city* reg* deg* emp* exp^2 )+
                           I( edu* exp* city* reg* deg* emp* exp^2 )+
                           I( race* deg* emp* exp^2 )+
                           I( edu* race* deg* emp* exp^2 )+
                           I( exp* race* deg* emp* exp^2 )+
                           I( edu* exp* race* deg* emp* exp^2 )+
                           I( city* race* deg* emp* exp^2 )+
                           I( edu* city* race* deg* emp* exp^2 )+
                           I( exp* city* race* deg* emp* exp^2 )+
                           I( edu* exp* city* race* deg* emp* exp^2 )+
                           I( reg* race* deg* emp* exp^2 )+
                           I( edu* reg* race* deg* emp* exp^2 )+
                           I( exp* reg* race* deg* emp* exp^2 )+
                           I( edu* exp* reg* race* deg* emp* exp^2 )+
                           I( city* reg* race* deg* emp* exp^2 )+
                           I( edu* city* reg* race* deg* emp* exp^2 )+
                           I( exp* city* reg* race* deg* emp* exp^2 )+
                           I( edu* exp* city* reg* race* deg* emp* exp^2 )+
                           I( com* emp* exp^2 )+
                           I( edu* com* emp* exp^2 )+
                           I( exp* com* emp* exp^2 )+
                           I( edu* exp* com* emp* exp^2 )+
                           I( city* com* emp* exp^2 )+
                           I( edu* city* com* emp* exp^2 )+
                           I( exp* city* com* emp* exp^2 )+
                           I( edu* exp* city* com* emp* exp^2 )+
                           I( reg* com* emp* exp^2 )+
                           I( edu* reg* com* emp* exp^2 )+
                           I( exp* reg* com* emp* exp^2 )+
                           I( edu* exp* reg* com* emp* exp^2 )+
                           I( city* reg* com* emp* exp^2 )+
                           I( edu* city* reg* com* emp* exp^2 )+
                           I( exp* city* reg* com* emp* exp^2 )+
                           I( edu* exp* city* reg* com* emp* exp^2 )+
                           I( race* com* emp* exp^2 )+
                           I( edu* race* com* emp* exp^2 )+
                           I( exp* race* com* emp* exp^2 )+
                           I( edu* exp* race* com* emp* exp^2 )+
                           I( city* race* com* emp* exp^2 )+
                           I( edu* city* race* com* emp* exp^2 )+
                           I( exp* city* race* com* emp* exp^2 )+
                           I( edu* exp* city* race* com* emp* exp^2 )+
                           I( reg* race* com* emp* exp^2 )+
                           I( edu* reg* race* com* emp* exp^2 )+
                           I( exp* reg* race* com* emp* exp^2 )+
                           I( edu* exp* reg* race* com* emp* exp^2 )+
                           I( city* reg* race* com* emp* exp^2 )+
                           I( edu* city* reg* race* com* emp* exp^2 )+
                           I( exp* city* reg* race* com* emp* exp^2 )+
                           I( edu* exp* city* reg* race* com* emp* exp^2 )+
                           I( deg* com* emp* exp^2 )+
                           I( edu* deg* com* emp* exp^2 )+
                           I( exp* deg* com* emp* exp^2 )+
                           I( edu* exp* deg* com* emp* exp^2 )+
                           I( city* deg* com* emp* exp^2 )+
                           I( edu* city* deg* com* emp* exp^2 )+
                           I( exp* city* deg* com* emp* exp^2 )+
                           I( edu* exp* city* deg* com* emp* exp^2 )+
                           I( reg* deg* com* emp* exp^2 )+
                           I( edu* reg* deg* com* emp* exp^2 )+
                           I( exp* reg* deg* com* emp* exp^2 )+
                           I( edu* exp* reg* deg* com* emp* exp^2 )+
                           I( city* reg* deg* com* emp* exp^2 )+
                           I( edu* city* reg* deg* com* emp* exp^2 )+
                           I( exp* city* reg* deg* com* emp* exp^2 )+
                           I( edu* exp* city* reg* deg* com* emp* exp^2 )+
                           I( race* deg* com* emp* exp^2 )+
                           I( edu* race* deg* com* emp* exp^2 )+
                           I( exp* race* deg* com* emp* exp^2 )+
                           I( edu* exp* race* deg* com* emp* exp^2 )+
                           I( city* race* deg* com* emp* exp^2 )+
                           I( edu* city* race* deg* com* emp* exp^2 )+
                           I( exp* city* race* deg* com* emp* exp^2 )+
                           I( edu* exp* city* race* deg* com* emp* exp^2 )+
                           I( reg* race* deg* com* emp* exp^2 )+
                           I( edu* reg* race* deg* com* emp* exp^2 )+
                           I( exp* reg* race* deg* com* emp* exp^2 )+
                           I( edu* exp* reg* race* deg* com* emp* exp^2 )+
                           I( city* reg* race* deg* com* emp* exp^2 )+
                           I( edu* city* reg* race* deg* com* emp* exp^2 )+
                           I( exp* city* reg* race* deg* com* emp* exp^2 )+
                           I( edu* exp* city* reg* race* deg* com* emp* exp^2 )+
                           I( edu^2* exp^2 )+
                           I( edu* edu^2* exp^2 )+
                           I( exp* edu^2* exp^2 )+
                           I( edu* exp* edu^2* exp^2 )+
                           I( city* edu^2* exp^2 )+
                           I( edu* city* edu^2* exp^2 )+
                           I( exp* city* edu^2* exp^2 )+
                           I( edu* exp* city* edu^2* exp^2 )+
                           I( reg* edu^2* exp^2 )+
                           I( edu* reg* edu^2* exp^2 )+
                           I( exp* reg* edu^2* exp^2 )+
                           I( edu* exp* reg* edu^2* exp^2 )+
                           I( city* reg* edu^2* exp^2 )+
                           I( edu* city* reg* edu^2* exp^2 )+
                           I( exp* city* reg* edu^2* exp^2 )+
                           I( edu* exp* city* reg* edu^2* exp^2 )+
                           I( race* edu^2* exp^2 )+
                           I( edu* race* edu^2* exp^2 )+
                           I( exp* race* edu^2* exp^2 )+
                           I( edu* exp* race* edu^2* exp^2 )+
                           I( city* race* edu^2* exp^2 )+
                           I( edu* city* race* edu^2* exp^2 )+
                           I( exp* city* race* edu^2* exp^2 )+
                           I( edu* exp* city* race* edu^2* exp^2 )+
                           I( reg* race* edu^2* exp^2 )+
                           I( edu* reg* race* edu^2* exp^2 )+
                           I( exp* reg* race* edu^2* exp^2 )+
                           I( edu* exp* reg* race* edu^2* exp^2 )+
                           I( city* reg* race* edu^2* exp^2 )+
                           I( edu* city* reg* race* edu^2* exp^2 )+
                           I( exp* city* reg* race* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* edu^2* exp^2 )+
                           I( deg* edu^2* exp^2 )+
                           I( edu* deg* edu^2* exp^2 )+
                           I( exp* deg* edu^2* exp^2 )+
                           I( edu* exp* deg* edu^2* exp^2 )+
                           I( city* deg* edu^2* exp^2 )+
                           I( edu* city* deg* edu^2* exp^2 )+
                           I( exp* city* deg* edu^2* exp^2 )+
                           I( edu* exp* city* deg* edu^2* exp^2 )+
                           I( reg* deg* edu^2* exp^2 )+
                           I( edu* reg* deg* edu^2* exp^2 )+
                           I( exp* reg* deg* edu^2* exp^2 )+
                           I( edu* exp* reg* deg* edu^2* exp^2 )+
                           I( city* reg* deg* edu^2* exp^2 )+
                           I( edu* city* reg* deg* edu^2* exp^2 )+
                           I( exp* city* reg* deg* edu^2* exp^2 )+
                           I( edu* exp* city* reg* deg* edu^2* exp^2 )+
                           I( race* deg* edu^2* exp^2 )+
                           I( edu* race* deg* edu^2* exp^2 )+
                           I( exp* race* deg* edu^2* exp^2 )+
                           I( edu* exp* race* deg* edu^2* exp^2 )+
                           I( city* race* deg* edu^2* exp^2 )+
                           I( edu* city* race* deg* edu^2* exp^2 )+
                           I( exp* city* race* deg* edu^2* exp^2 )+
                           I( edu* exp* city* race* deg* edu^2* exp^2 )+
                           I( reg* race* deg* edu^2* exp^2 )+
                           I( edu* reg* race* deg* edu^2* exp^2 )+
                           I( exp* reg* race* deg* edu^2* exp^2 )+
                           I( edu* exp* reg* race* deg* edu^2* exp^2 )+
                           I( city* reg* race* deg* edu^2* exp^2 )+
                           I( edu* city* reg* race* deg* edu^2* exp^2 )+
                           I( exp* city* reg* race* deg* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* deg* edu^2* exp^2 )+
                           I( com* edu^2* exp^2 )+
                           I( edu* com* edu^2* exp^2 )+
                           I( exp* com* edu^2* exp^2 )+
                           I( edu* exp* com* edu^2* exp^2 )+
                           I( city* com* edu^2* exp^2 )+
                           I( edu* city* com* edu^2* exp^2 )+
                           I( exp* city* com* edu^2* exp^2 )+
                           I( edu* exp* city* com* edu^2* exp^2 )+
                           I( reg* com* edu^2* exp^2 )+
                           I( edu* reg* com* edu^2* exp^2 )+
                           I( exp* reg* com* edu^2* exp^2 )+
                           I( edu* exp* reg* com* edu^2* exp^2 )+
                           I( city* reg* com* edu^2* exp^2 )+
                           I( edu* city* reg* com* edu^2* exp^2 )+
                           I( exp* city* reg* com* edu^2* exp^2 )+
                           I( edu* exp* city* reg* com* edu^2* exp^2 )+
                           I( race* com* edu^2* exp^2 )+
                           I( edu* race* com* edu^2* exp^2 )+
                           I( exp* race* com* edu^2* exp^2 )+
                           I( edu* exp* race* com* edu^2* exp^2 )+
                           I( city* race* com* edu^2* exp^2 )+
                           I( edu* city* race* com* edu^2* exp^2 )+
                           I( exp* city* race* com* edu^2* exp^2 )+
                           I( edu* exp* city* race* com* edu^2* exp^2 )+
                           I( reg* race* com* edu^2* exp^2 )+
                           I( edu* reg* race* com* edu^2* exp^2 )+
                           I( exp* reg* race* com* edu^2* exp^2 )+
                           I( edu* exp* reg* race* com* edu^2* exp^2 )+
                           I( city* reg* race* com* edu^2* exp^2 )+
                           I( edu* city* reg* race* com* edu^2* exp^2 )+
                           I( exp* city* reg* race* com* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* com* edu^2* exp^2 )+
                           I( deg* com* edu^2* exp^2 )+
                           I( edu* deg* com* edu^2* exp^2 )+
                           I( exp* deg* com* edu^2* exp^2 )+
                           I( edu* exp* deg* com* edu^2* exp^2 )+
                           I( city* deg* com* edu^2* exp^2 )+
                           I( edu* city* deg* com* edu^2* exp^2 )+
                           I( exp* city* deg* com* edu^2* exp^2 )+
                           I( edu* exp* city* deg* com* edu^2* exp^2 )+
                           I( reg* deg* com* edu^2* exp^2 )+
                           I( edu* reg* deg* com* edu^2* exp^2 )+
                           I( exp* reg* deg* com* edu^2* exp^2 )+
                           I( edu* exp* reg* deg* com* edu^2* exp^2 )+
                           I( city* reg* deg* com* edu^2* exp^2 )+
                           I( edu* city* reg* deg* com* edu^2* exp^2 )+
                           I( exp* city* reg* deg* com* edu^2* exp^2 )+
                           I( edu* exp* city* reg* deg* com* edu^2* exp^2 )+
                           I( race* deg* com* edu^2* exp^2 )+
                           I( edu* race* deg* com* edu^2* exp^2 )+
                           I( exp* race* deg* com* edu^2* exp^2 )+
                           I( edu* exp* race* deg* com* edu^2* exp^2 )+
                           I( city* race* deg* com* edu^2* exp^2 )+
                           I( edu* city* race* deg* com* edu^2* exp^2 )+
                           I( exp* city* race* deg* com* edu^2* exp^2 )+
                           I( edu* exp* city* race* deg* com* edu^2* exp^2 )+
                           I( reg* race* deg* com* edu^2* exp^2 )+
                           I( edu* reg* race* deg* com* edu^2* exp^2 )+
                           I( exp* reg* race* deg* com* edu^2* exp^2 )+
                           I( edu* exp* reg* race* deg* com* edu^2* exp^2 )+
                           I( city* reg* race* deg* com* edu^2* exp^2 )+
                           I( edu* city* reg* race* deg* com* edu^2* exp^2 )+
                           I( exp* city* reg* race* deg* com* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* deg* com* edu^2* exp^2 )+
                           I( emp* edu^2* exp^2 )+
                           I( edu* emp* edu^2* exp^2 )+
                           I( exp* emp* edu^2* exp^2 )+
                           I( edu* exp* emp* edu^2* exp^2 )+
                           I( city* emp* edu^2* exp^2 )+
                           I( edu* city* emp* edu^2* exp^2 )+
                           I( exp* city* emp* edu^2* exp^2 )+
                           I( edu* exp* city* emp* edu^2* exp^2 )+
                           I( reg* emp* edu^2* exp^2 )+
                           I( edu* reg* emp* edu^2* exp^2 )+
                           I( exp* reg* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* emp* edu^2* exp^2 )+
                           I( city* reg* emp* edu^2* exp^2 )+
                           I( edu* city* reg* emp* edu^2* exp^2 )+
                           I( exp* city* reg* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* emp* edu^2* exp^2 )+
                           I( race* emp* edu^2* exp^2 )+
                           I( edu* race* emp* edu^2* exp^2 )+
                           I( exp* race* emp* edu^2* exp^2 )+
                           I( edu* exp* race* emp* edu^2* exp^2 )+
                           I( city* race* emp* edu^2* exp^2 )+
                           I( edu* city* race* emp* edu^2* exp^2 )+
                           I( exp* city* race* emp* edu^2* exp^2 )+
                           I( edu* exp* city* race* emp* edu^2* exp^2 )+
                           I( reg* race* emp* edu^2* exp^2 )+
                           I( edu* reg* race* emp* edu^2* exp^2 )+
                           I( exp* reg* race* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* race* emp* edu^2* exp^2 )+
                           I( city* reg* race* emp* edu^2* exp^2 )+
                           I( edu* city* reg* race* emp* edu^2* exp^2 )+
                           I( exp* city* reg* race* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* emp* edu^2* exp^2 )+
                           I( deg* emp* edu^2* exp^2 )+
                           I( edu* deg* emp* edu^2* exp^2 )+
                           I( exp* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* deg* emp* edu^2* exp^2 )+
                           I( city* deg* emp* edu^2* exp^2 )+
                           I( edu* city* deg* emp* edu^2* exp^2 )+
                           I( exp* city* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* city* deg* emp* edu^2* exp^2 )+
                           I( reg* deg* emp* edu^2* exp^2 )+
                           I( edu* reg* deg* emp* edu^2* exp^2 )+
                           I( exp* reg* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* deg* emp* edu^2* exp^2 )+
                           I( city* reg* deg* emp* edu^2* exp^2 )+
                           I( edu* city* reg* deg* emp* edu^2* exp^2 )+
                           I( exp* city* reg* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* deg* emp* edu^2* exp^2 )+
                           I( race* deg* emp* edu^2* exp^2 )+
                           I( edu* race* deg* emp* edu^2* exp^2 )+
                           I( exp* race* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* race* deg* emp* edu^2* exp^2 )+
                           I( city* race* deg* emp* edu^2* exp^2 )+
                           I( edu* city* race* deg* emp* edu^2* exp^2 )+
                           I( exp* city* race* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* city* race* deg* emp* edu^2* exp^2 )+
                           I( reg* race* deg* emp* edu^2* exp^2 )+
                           I( edu* reg* race* deg* emp* edu^2* exp^2 )+
                           I( exp* reg* race* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* race* deg* emp* edu^2* exp^2 )+
                           I( city* reg* race* deg* emp* edu^2* exp^2 )+
                           I( edu* city* reg* race* deg* emp* edu^2* exp^2 )+
                           I( exp* city* reg* race* deg* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* deg* emp* edu^2* exp^2 )+
                           I( com* emp* edu^2* exp^2 )+
                           I( edu* com* emp* edu^2* exp^2 )+
                           I( exp* com* emp* edu^2* exp^2 )+
                           I( edu* exp* com* emp* edu^2* exp^2 )+
                           I( city* com* emp* edu^2* exp^2 )+
                           I( edu* city* com* emp* edu^2* exp^2 )+
                           I( exp* city* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* com* emp* edu^2* exp^2 )+
                           I( reg* com* emp* edu^2* exp^2 )+
                           I( edu* reg* com* emp* edu^2* exp^2 )+
                           I( exp* reg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* com* emp* edu^2* exp^2 )+
                           I( city* reg* com* emp* edu^2* exp^2 )+
                           I( edu* city* reg* com* emp* edu^2* exp^2 )+
                           I( exp* city* reg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* com* emp* edu^2* exp^2 )+
                           I( race* com* emp* edu^2* exp^2 )+
                           I( edu* race* com* emp* edu^2* exp^2 )+
                           I( exp* race* com* emp* edu^2* exp^2 )+
                           I( edu* exp* race* com* emp* edu^2* exp^2 )+
                           I( city* race* com* emp* edu^2* exp^2 )+
                           I( edu* city* race* com* emp* edu^2* exp^2 )+
                           I( exp* city* race* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* race* com* emp* edu^2* exp^2 )+
                           I( reg* race* com* emp* edu^2* exp^2 )+
                           I( edu* reg* race* com* emp* edu^2* exp^2 )+
                           I( exp* reg* race* com* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* race* com* emp* edu^2* exp^2 )+
                           I( city* reg* race* com* emp* edu^2* exp^2 )+
                           I( edu* city* reg* race* com* emp* edu^2* exp^2 )+
                           I( exp* city* reg* race* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* com* emp* edu^2* exp^2 )+
                           I( deg* com* emp* edu^2* exp^2 )+
                           I( edu* deg* com* emp* edu^2* exp^2 )+
                           I( exp* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* deg* com* emp* edu^2* exp^2 )+
                           I( city* deg* com* emp* edu^2* exp^2 )+
                           I( edu* city* deg* com* emp* edu^2* exp^2 )+
                           I( exp* city* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* deg* com* emp* edu^2* exp^2 )+
                           I( reg* deg* com* emp* edu^2* exp^2 )+
                           I( edu* reg* deg* com* emp* edu^2* exp^2 )+
                           I( exp* reg* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* deg* com* emp* edu^2* exp^2 )+
                           I( city* reg* deg* com* emp* edu^2* exp^2 )+
                           I( edu* city* reg* deg* com* emp* edu^2* exp^2 )+
                           I( exp* city* reg* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* deg* com* emp* edu^2* exp^2 )+
                           I( race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* race* deg* com* emp* edu^2* exp^2 )+
                           I( exp* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* race* deg* com* emp* edu^2* exp^2 )+
                           I( city* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* city* race* deg* com* emp* edu^2* exp^2 )+
                           I( exp* city* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* race* deg* com* emp* edu^2* exp^2 )+
                           I( reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( exp* reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( city* reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* city* reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( exp* city* reg* race* deg* com* emp* edu^2* exp^2 )+
                           I( edu* exp* city* reg* race* deg* com* emp* edu^2* exp^2 ), data = data))

step(min.model,scope = full.model, direction = c("forward"))
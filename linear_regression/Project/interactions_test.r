#testing stepwise regression with all interactions

min.model <- lm(log(wage)~1, data=data)
# full.model <- formula(lm(log(wage)~edu+I(edu^2)+exp+I(exp^2)+city+reg+race+deg+com+emp+
#                            edu*exp+
#                            edu*race+
#                            edu*city+
#                            edu*reg+
#                            edu*deg+
#                            edu*com+
#                            edu*emp+
#                            exp*edu+
#                            exp*race+
#                            exp*city+
#                            exp*reg+
#                            exp*deg+
#                            exp*com+
#                            exp*emp+
#                            race*edu+
#                            race*exp+
#                            race*city+
#                            race*reg+
#                            race*deg+
#                            race*com+
#                            race*emp+
#                            city*edu+
#                            city*exp+
#                            city*race+
#                            city*reg+
#                            city*deg+
#                            city*com+
#                            city*emp+
#                            reg*edu+
#                            reg*exp+
#                            reg*race+
#                            reg*city+
#                            reg*deg+
#                            reg*com+
#                            reg*emp+
#                            deg*edu+
#                            deg*exp+
#                            deg*race+
#                            deg*city+
#                            deg*reg+
#                            deg*com+
#                            deg*emp+
#                            com*edu+
#                            com*exp+
#                            com*race+
#                            com*city+
#                            com*reg+
#                            com*deg+
#                            com*emp+
#                            emp*edu+
#                            emp*exp+
#                            emp*race+
#                            emp*city+
#                            emp*reg+
#                            emp*deg+
#                            emp*com, data = data))

full.model <- formula(lm(log(wage)~edu+
  exp+( edu* exp)+
  ( city)+
  ( edu* city)+
  ( exp* city)+
  ( edu* exp* city)+
  ( reg)+
  ( edu* reg)+
  ( exp* reg)+
  ( edu* exp* reg)+
  ( city* reg)+
  ( edu* city* reg)+
  ( exp* city* reg)+
  ( edu* exp* city* reg)+
  ( race)+
  ( edu* race)+
  ( exp* race)+
  ( edu* exp* race)+
  ( city* race)+
  ( edu* city* race)+
  ( exp* city* race)+
  ( edu* exp* city* race)+
  ( reg* race)+
  ( edu* reg* race)+
  ( exp* reg* race)+
  ( edu* exp* reg* race)+
  ( city* reg* race)+
  ( edu* city* reg* race)+
  ( exp* city* reg* race)+
  ( edu* exp* city* reg* race)+
  ( deg)+
  ( edu* deg)+
  ( exp* deg)+
  ( edu* exp* deg)+
  ( city* deg)+
  ( edu* city* deg)+
  ( exp* city* deg)+
  ( edu* exp* city* deg)+
  ( reg* deg)+
  ( edu* reg* deg)+
  ( exp* reg* deg)+
  ( edu* exp* reg* deg)+
  ( city* reg* deg)+
  ( edu* city* reg* deg)+
  ( exp* city* reg* deg)+
  ( edu* exp* city* reg* deg)+
  ( race* deg)+
  ( edu* race* deg)+
  ( exp* race* deg)+
  ( edu* exp* race* deg)+
  ( city* race* deg)+
  ( edu* city* race* deg)+
  ( exp* city* race* deg)+
  ( edu* exp* city* race* deg)+
  ( reg* race* deg)+
  ( edu* reg* race* deg)+
  ( exp* reg* race* deg)+
  ( edu* exp* reg* race* deg)+
  ( city* reg* race* deg)+
  ( edu* city* reg* race* deg)+
  ( exp* city* reg* race* deg)+
  ( edu* exp* city* reg* race* deg)+
  ( com)+
  ( edu* com)+
  ( exp* com)+
  ( edu* exp* com)+
  ( city* com)+
  ( edu* city* com)+
  ( exp* city* com)+
  ( edu* exp* city* com)+
  ( reg* com)+
  ( edu* reg* com)+
  ( exp* reg* com)+
  ( edu* exp* reg* com)+
  ( city* reg* com)+
  ( edu* city* reg* com)+
  ( exp* city* reg* com)+
  ( edu* exp* city* reg* com)+
  ( race* com)+
  ( edu* race* com)+
  ( exp* race* com)+
  ( edu* exp* race* com)+
  ( city* race* com)+
  ( edu* city* race* com)+
  ( exp* city* race* com)+
  ( edu* exp* city* race* com)+
  ( reg* race* com)+
  ( edu* reg* race* com)+
  ( exp* reg* race* com)+
  ( edu* exp* reg* race* com)+
  ( city* reg* race* com)+
  ( edu* city* reg* race* com)+
  ( exp* city* reg* race* com)+
  ( edu* exp* city* reg* race* com)+
  ( deg* com)+
  ( edu* deg* com)+
  ( exp* deg* com)+
  ( edu* exp* deg* com)+
  ( city* deg* com)+
  ( edu* city* deg* com)+
  ( exp* city* deg* com)+
  ( edu* exp* city* deg* com)+
  ( reg* deg* com)+
  ( edu* reg* deg* com)+
  ( exp* reg* deg* com)+
  ( edu* exp* reg* deg* com)+
  ( city* reg* deg* com)+
  ( edu* city* reg* deg* com)+
  ( exp* city* reg* deg* com)+
  ( edu* exp* city* reg* deg* com)+
  ( race* deg* com)+
  ( edu* race* deg* com)+
  ( exp* race* deg* com)+
  ( edu* exp* race* deg* com)+
  ( city* race* deg* com)+
  ( edu* city* race* deg* com)+
  ( exp* city* race* deg* com)+
  ( edu* exp* city* race* deg* com)+
  ( reg* race* deg* com)+
  ( edu* reg* race* deg* com)+
  ( exp* reg* race* deg* com)+
  ( edu* exp* reg* race* deg* com)+
  ( city* reg* race* deg* com)+
  ( edu* city* reg* race* deg* com)+
  ( exp* city* reg* race* deg* com)+
  ( edu* exp* city* reg* race* deg* com)+
  ( emp)+
  ( edu* emp)+
  ( exp* emp)+
  ( edu* exp* emp)+
  ( city* emp)+
  ( edu* city* emp)+
  ( exp* city* emp)+
  ( edu* exp* city* emp)+
  ( reg* emp)+
  ( edu* reg* emp)+
  ( exp* reg* emp)+
  ( edu* exp* reg* emp)+
  ( city* reg* emp)+
  ( edu* city* reg* emp)+
  ( exp* city* reg* emp)+
  ( edu* exp* city* reg* emp)+
  ( race* emp)+
  ( edu* race* emp)+
  ( exp* race* emp)+
  ( edu* exp* race* emp)+
  ( city* race* emp)+
  ( edu* city* race* emp)+
  ( exp* city* race* emp)+
  ( edu* exp* city* race* emp)+
  ( reg* race* emp)+
  ( edu* reg* race* emp)+
  ( exp* reg* race* emp)+
  ( edu* exp* reg* race* emp)+
  ( city* reg* race* emp)+
  ( edu* city* reg* race* emp)+
  ( exp* city* reg* race* emp)+
  ( edu* exp* city* reg* race* emp)+
  ( deg* emp)+
  ( edu* deg* emp)+
  ( exp* deg* emp)+
  ( edu* exp* deg* emp)+
  ( city* deg* emp)+
  ( edu* city* deg* emp)+
  ( exp* city* deg* emp)+
  ( edu* exp* city* deg* emp)+
  ( reg* deg* emp)+
  ( edu* reg* deg* emp)+
  ( exp* reg* deg* emp)+
  ( edu* exp* reg* deg* emp)+
  ( city* reg* deg* emp)+
  ( edu* city* reg* deg* emp)+
  ( exp* city* reg* deg* emp)+
  ( edu* exp* city* reg* deg* emp)+
  ( race* deg* emp)+
  ( edu* race* deg* emp)+
  ( exp* race* deg* emp)+
  ( edu* exp* race* deg* emp)+
  ( city* race* deg* emp)+
  ( edu* city* race* deg* emp)+
  ( exp* city* race* deg* emp)+
  ( edu* exp* city* race* deg* emp)+
  ( reg* race* deg* emp)+
  ( edu* reg* race* deg* emp)+
  ( exp* reg* race* deg* emp)+
  ( edu* exp* reg* race* deg* emp)+
  ( city* reg* race* deg* emp)+
  ( edu* city* reg* race* deg* emp)+
  ( exp* city* reg* race* deg* emp)+
  ( edu* exp* city* reg* race* deg* emp)+
  ( com* emp)+
  ( edu* com* emp)+
  ( exp* com* emp)+
  ( edu* exp* com* emp)+
  ( city* com* emp)+
  ( edu* city* com* emp)+
  ( exp* city* com* emp)+
  ( edu* exp* city* com* emp)+
  ( reg* com* emp)+
  ( edu* reg* com* emp)+
  ( exp* reg* com* emp)+
  ( edu* exp* reg* com* emp)+
  ( city* reg* com* emp)+
  ( edu* city* reg* com* emp)+
  ( exp* city* reg* com* emp)+
  ( edu* exp* city* reg* com* emp)+
  ( race* com* emp)+
  ( edu* race* com* emp)+
  ( exp* race* com* emp)+
  ( edu* exp* race* com* emp)+
  ( city* race* com* emp)+
  ( edu* city* race* com* emp)+
  ( exp* city* race* com* emp)+
  ( edu* exp* city* race* com* emp)+
  ( reg* race* com* emp)+
  ( edu* reg* race* com* emp)+
  ( exp* reg* race* com* emp)+
  ( edu* exp* reg* race* com* emp)+
  ( city* reg* race* com* emp)+
  ( edu* city* reg* race* com* emp)+
  ( exp* city* reg* race* com* emp)+
  ( edu* exp* city* reg* race* com* emp)+
  ( deg* com* emp)+
  ( edu* deg* com* emp)+
  ( exp* deg* com* emp)+
  ( edu* exp* deg* com* emp)+
  ( city* deg* com* emp)+
  ( edu* city* deg* com* emp)+
  ( exp* city* deg* com* emp)+
  ( edu* exp* city* deg* com* emp)+
  ( reg* deg* com* emp)+
  ( edu* reg* deg* com* emp)+
  ( exp* reg* deg* com* emp)+
  ( edu* exp* reg* deg* com* emp)+
  ( city* reg* deg* com* emp)+
  ( edu* city* reg* deg* com* emp)+
  ( exp* city* reg* deg* com* emp)+
  ( edu* exp* city* reg* deg* com* emp)+
  ( race* deg* com* emp)+
  ( edu* race* deg* com* emp)+
  ( exp* race* deg* com* emp)+
  ( edu* exp* race* deg* com* emp)+
  ( city* race* deg* com* emp)+
  ( edu* city* race* deg* com* emp)+
  ( exp* city* race* deg* com* emp)+
  ( edu* exp* city* race* deg* com* emp)+
  ( reg* race* deg* com* emp)+
  ( edu* reg* race* deg* com* emp)+
  ( exp* reg* race* deg* com* emp)+
  ( edu* exp* reg* race* deg* com* emp)+
  ( city* reg* race* deg* com* emp)+
  ( edu* city* reg* race* deg* com* emp)+
  ( exp* city* reg* race* deg* com* emp)+
  ( edu* exp* city* reg* race* deg* com* emp)+I(exp^2)+I(edu^2), data = data))

step(min.model,scope = full.model, direction = c("forward"))
abstract class Appstates{}
class AppsInitialtate extends Appstates{}
class BottomNavState extends Appstates{}
class NewsGetBusinessNewsTrueState  extends Appstates{}
class NewsGetSportsNewsTrueState  extends Appstates{}
class NewsGetScienceNewsTrueState  extends Appstates{}
class NewsGetBusinessNewsFalseState  extends Appstates{
 final String error;
 NewsGetBusinessNewsFalseState(this.error);
}
class NewsGetSportsNewsFalseState  extends Appstates{
 final String error;
 NewsGetSportsNewsFalseState(this.error);
}
class NewsGetScienceNewsFalseState  extends Appstates{
 final String error;
 NewsGetScienceNewsFalseState(this.error);
}
class GetBusinessLoadingState extends Appstates{}
class GetSportsLoadingState extends Appstates{}
class GetScienceLoadingState extends Appstates{}

abstract class Appstates{}
class AppsInitialtate extends Appstates{}
 class BottomNavState extends Appstates{}
class NewsGetBusinessNewsTrueState  extends Appstates{}
class NewsGetBusinessNewsFalseState  extends Appstates{
 final String error;
 NewsGetBusinessNewsFalseState(this.error);
}
class GetBusinessLoadingState extends Appstates{}
class GetSportsLoadingState extends Appstates{}
class GetScienceLoadingState extends Appstates{}

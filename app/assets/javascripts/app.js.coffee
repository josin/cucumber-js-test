window.App = Em.Application.create
  rootElement: "#app_container"
  title: "Contributor Stats"

App.ApplicationController = Em.Controller.extend()
App.DataController = Em.Controller.extend
  find: ->
    jQuery.ajax(
      url: "/home"
      type: "GET"
      dataType: "json"
    ).done (json) =>
      @set "content", json


App.Router = Em.Router.extend
  enableLogging: false

  root: Em.Route.extend
    index: Em.Route.extend
      route: "/"

    goTime: (router, event) ->
      router.get("applicationController").connectOutlet "time"

    goJSON: (router, event) ->
      router.get("dataController").find()
      router.get("applicationController").connectOutlet "data"
App.ApplicationView = Em.View.extend
  template: Em.Handlebars.compile """
    <h2>{{App.title}}</h2>
    <div class="btn-toolbar">
      <button class="btn btn-primary" {{action goTime}}><i class="icon-info-sign icon-white"></i> Get time</button>
      <button class="btn btn-primary" {{action goJSON}}><i class="icon-refresh icon-white"></i> Get data</button>
    </div>
    {{outlet}}
  """

App.TimeView = Em.View.extend
  now: (-> new Date().toString() ).property()
  template: Em.Handlebars.compile """
    Time is: {{view.now}}
  """

App.DataView = Em.View.extend
  contentBinding: "controller.content"
  template: Em.Handlebars.compile """
    Response:
    <pre>
      Text: {{view.content.text}}
      Sleep time: {{view.content.sleep_time}}
    </pre>
  """

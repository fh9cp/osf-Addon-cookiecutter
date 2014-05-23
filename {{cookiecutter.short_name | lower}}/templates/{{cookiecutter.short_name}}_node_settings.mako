<!-- TODO -->
<h4 class="addon-title">
    {{cookiecutter.full_name}}
</h4>


<div id="{{cookiecutter.short_name}}Scope" class="scripted">
    <!-- Uncomment for debugging. Shows pretty printed ViewModel data -->
    <!-- <pre data-bind="text: ko.toJSON($data, null, 2)"></pre> -->

    <!-- TODO: Settings Interface here -->
    <input data-bind="value: message" type="text" class="form-control">

    <!-- Flashed Messages -->
    <div class="help-block">
        <p data-bind="html: message, attr.class: messageClass"></p>
    </div>

</div>

<script>
    $script(['/static/addons/{{cookiecutter.short_name}}/{{cookiecutter.short_name}}NodeConfig.js']);
    $script.ready('{{cookiecutter.short_name}}NodeConfig', function() {
        // TODO(sloria): Remove this dependency on mako variable
        var url = '${node["api_url"] + "{{cookiecutter.short_name}}/config/"}';
        var {{cookiecutter.short_name}} = new {{cookiecutter.short_name | capitalize}}NodeConfig('#{{cookiecutter.short_name}}Scope', url);
    });
</script>
public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.TeamPuzel.HelloWorld",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var buttonTest = new Gtk.Button.with_label("Button") {
            margin =12
        };
        
        buttonTest.clicked.connect (() => {
            buttonTest.label = "Hello world!";
            buttonTest.sensitive = false;
        });
        
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        
        
        main_window.add(buttonTest);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}

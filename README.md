# Ldesignmedia - moodle-codespace

Description
---------------

Moodle development environment for github code spaces.

Get started
---------------

1. Make a fork of this repository.
2. Create a codespace of the forked repository.
3. Use AI like ChatGPT to generate shell script to build a simple moodle plugin builder like `plugin_builder.sh` example.
4. Run the plugin builder.
5. Add the volume to docker-composer.yml.
6. Set Up a forwarding port In our case we are using `PORT 8080`.
7. Open the browser from the codespace.
8. If you got the permission issue run this command below on codespace terminal and re-run again.
    ```shell

    sh .devcontainer/scripts/fixmoodleowner.sh

    ```
9. Start your plugin development.


Changelog
---------------
See **Git** for the complete history.

## License

The GNU GENERAL PUBLIC LICENSE.

## Contributing

Contributions are welcome and will be fully credited. We accept contributions via Pull Requests on Github.

##### Author:

* Hamza Tamyachte :: [Ldesign Media](https://ldesignmedia.nl/) -  [hamza.tamyachte@ldesignmedia.nl](hamza.tamyachte@ldesignmedia.nl)
* Luuk Verhoeven :: [Ldesign Media](https://ldesignmedia.nl/) - [luuk@ldesignmedia.nl](luuk@ldesignmedia.nl)

<img src="https://ldesignmedia.nl/themes/ldesignmedia/assets/images/logo/logo.svg" alt="ldesignmedia" height="70px">

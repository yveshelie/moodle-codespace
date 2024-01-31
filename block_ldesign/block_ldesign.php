<?php

class block_ldesign extends block_base {
    public function init() {
        $this->title = get_string('pluginname', 'block_ldesign');
    }

    public function get_content() {
        if ($this->content !== null) {
            return $this->content;
        }

        $this->content = new stdClass();
        $this->content->text = 'The content of your block goes here.';
        $this->content->footer = 'Footer text here';

        return $this->content;
    }
}

package com.example.helloworld;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // Set up a TextView with "Hello World"
        TextView textView = new TextView(this);
        textView.setText("Hello World");
        setContentView(textView);
    }
}

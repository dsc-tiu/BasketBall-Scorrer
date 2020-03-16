package com.example.basketball

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        /*Team A Buttons*/
        val pointA5: Button = findViewById(R.id.a5)
        val pointA3: Button = findViewById(R.id.a3)
        val pointA2: Button = findViewById(R.id.a2)

        /*Team B Buttons*/
        val pointB5: Button = findViewById(R.id.b5)
        val pointB3: Button = findViewById(R.id.b3)
        val pointB2: Button = findViewById(R.id.b2)

        /*Team A Point*/
        val teamAScore : TextView = findViewById(R.id.aPoint)

        /*Team B Point*/
        val teamBScore : TextView = findViewById(R.id.bPoint)

        /*refresh Button*/
        val refreshButton : Button = findViewById(R.id.refresh)


        /*Scoring Team A*/
        pointA5.setOnClickListener{
            teamAScore.text = addFive(teamAScore.text.toString().toInt())
        }

        pointA3.setOnClickListener{
            teamAScore.text = addThree(teamAScore.text.toString().toInt())
        }

        pointA2.setOnClickListener{
            teamAScore.text = addTwo(teamAScore.text.toString().toInt())
        }

        /*Scoring Team B*/

        pointB5.setOnClickListener{
            teamBScore.text = addFive(teamBScore.text.toString().toInt())
        }

        pointB3.setOnClickListener{
            teamBScore.text = addThree(teamBScore.text.toString().toInt())
        }

        pointB2.setOnClickListener{
            teamBScore.text = addTwo(teamBScore.text.toString().toInt())
        }

        refreshButton.setOnClickListener {
            teamAScore.text = 0.toString()
            teamBScore.text = 0.toString()
        }
    }

    private fun addTwo(score: Int): String {
        return (score + 2).toString()
    }

    private fun addThree(score: Int): String {
        return (score + 3).toString()
    }

    private fun addFive(score: Int): String {
        return (score + 5).toString()
    }
}

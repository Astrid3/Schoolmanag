<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SmAcademicYear extends Model
{
    protected $tables='sm_academic_years';
    public function academic_Year()
    {
        return $this->belongsTo('App\SmAcademicYear', 'session_id', 'id');
    }//
}

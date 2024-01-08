@extends('backEnd.master')
@section('mainContent')
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>@lang('lang.staff_attendance')</h1>
            <div class="bc-pages">
                <a href="{{url('dashboard')}}">@lang('lang.dashboard')</a>
                <a href="#">@lang('lang.human_resource')</a>
                <a href="#">@lang('lang.staff_attendance')</a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area">
    <div class="container-fluid p-0">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="main-title">
                        <h3 class="mb-30">@lang('lang.select_criteria')</h3>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                <a href="{{url('staff-attendance-import')}}" class="primary-btn small fix-gr-bg pull-right sm_mb_20 sm2_mb_20"><span class="ti-plus pr-2"></span>Import Attendance</a>
            </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                        @if(session()->has('message-success'))
                        <div class="alert alert-success">
                            {{ session()->get('message-success') }}
                        </div>
                        @elseif(session()->has('message-danger'))
                        <div class="alert alert-danger">
                            {{ session()->get('message-danger') }}
                        </div>
                        @endif
                    <div class="white-box">
                        {{ Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'staff-attendance-search', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'id' => 'infix_form']) }}
                           
                        <div class="row">
                                <input type="hidden" name="url" id="url" value="{{URL::to('/')}}">
                                <div class="col-lg-6 mt-30-md col-md-6">
                                    <select class="niceSelect w-100 bb form-control{{ $errors->has('role') ? ' is-invalid' : '' }}" id="select_class" name="role">
                                        <option data-display="@lang('lang.select_role') *" value="">@lang('lang.select_role') *</option>
                                        @foreach($roles as $role)
                                        <option value="{{$role->id}}" {{isset($role_id)? ($role->id == $role_id? 'selected':''):''}}>{{$role->name}}</option>
                                        @endforeach
                                    </select>
                                     @if ($errors->has('role'))
                                    <span class="invalid-feedback invalid-select" role="alert">
                                        <strong>{{ $errors->first('role') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div class="col-lg-6 mt-30-md col-md-6">
                                    <div class="row no-gutters input-right-icon">
                                        <div class="col">
                                            <div class="input-effect">
                                                <input class="primary-input date form-control{{ $errors->has('attendance_date') ? ' is-invalid' : '' }} {{isset($date)? 'read-only-input': ''}}" id="startDate" type="text"
                                                    name="attendance_date" autocomplete="off" value="{{isset($date)? $date: date('m/d/Y')}}">
                                                <label for="startDate">@lang('lang.attendance') @lang('lang.date')*</label>
                                                <span class="focus-border"></span>
                                                
                                                @if ($errors->has('attendance_date'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('attendance_date') }}</strong>
                                                </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <button class="" type="button" >
                                                <i class="ti-calendar" id="start-date-icon"></i>
                                            </button>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="col-lg-12 mt-20 text-right">
                                    {{-- <button type="submit" class="primary-btn small fix-gr-bg" id='btnsubmit'> --}}
                                    <button type="submit" class="primary-btn small fix-gr-bg" id='btnsubmit'>
                                        <span class="ti-search pr-2"></span>
                                        @lang('lang.search')
                                    </button>
                                </div>
                            </div>
                        {{ Form::close() }}
                    </div>
                </div>
            </div>


            
@if(isset($already_assigned_staffs))

{{ Form::open(['class' => 'form-horizontal', 'files' => true, 'method' => 'POST', 'enctype' => 'multipart/form-data'])}}

            <div class="row mt-40">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 no-gutters">
                            <div class="main-title">
                                <h3 class="mb-30">@lang('lang.staff_attendance')</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 no-gutters">
                            @if($attendance_type != "" && $attendance_type == "H")
                            <div class="alert alert-warning">@lang('lang.attendance_already_submitted_as_holiday')</div>
                            @elseif($attendance_type != "" && $attendance_type != "H")
                            <div class="alert alert-success">@lang('lang.attendance_already_submitted')</div>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6  col-md-6 no-gutters text-md-left mark-holiday">
                            <button type="button" class="primary-btn fix-gr-bg mb-20">
                            <input type="checkbox" id="mark_holiday" class="common-checkbox form-control" name="mark_holiday" value="1" {{$attendance_type == "H"? 'checked':''}}>
                            <label for="mark_holiday">@lang('lang.mark_holiday')</label>
                        </button>
                        </div>

                    @if(in_array(166, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 )

                    
                        <div class="col-lg-6 col-md-6 text-md-right">
                            <button type="submit" class="primary-btn fix-gr-bg mb-20" onclick="javascript: form.action='{{url('staff-attendance-store')}}'">
                            <span class="ti-save pr"></span>
                                @lang('lang.save') @lang('lang.attendance')
                            </button>
                        </div>
                    @endif
                    </div>

                   

                    <input type="hidden" name="date" value="{{isset($date)? $date: ''}}">

                        
                    <!-- </div> -->
                    <div class="row">
                        <div class="col-lg-12">
                            <table id="table_id_table" class="display school-table" cellspacing="0" width="100%">
                                <thead>
                                    @if(session()->has('message-danger') != "")
                                    <tr>
                                        <td colspan="9">
                                            @if(session()->has('message-danger'))
                                            <div class="alert alert-danger">
                                                {{ session()->get('message-danger') }}
                                            </div>
                                            @endif
                                        </td>
                                    </tr>
                                    @endif
                                    <tr>
                                        <th width="15%">@lang('lang.staff') @lang('lang.no')</th>
                                        <th width="15%">@lang('lang.staff') @lang('lang.name')</th>
                                        <th width="12%">@lang('lang.role')</th>
                                        <th width="35%">@lang('lang.attendance')</th>
                                        <th width="20%">@lang('lang.note')</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @foreach($already_assigned_staffs as $already_assigned_staff)
                                    <tr>
                                        <td>{{$already_assigned_staff->StaffInfo->staff_no}}<input type="hidden" name="id[]" value="{{$already_assigned_staff->StaffInfo->id}}"></td>
                                        <td>
                                            @if($already_assigned_staff->StaffInfo!="")
                                            {{$already_assigned_staff->StaffInfo->first_name.' '.$already_assigned_staff->StaffInfo->last_name}}
                                            @endif
                                        </td>
                                        <td>
                                            @if($already_assigned_staff->StaffInfo!="" && $already_assigned_staff->StaffInfo->roles!="")
                                            {{$already_assigned_staff->StaffInfo->roles->name}}
                                            @endif
                                        </td>
                                        <td>
                                            <div class="d-flex radio-btn-flex">
                                                <div class="mr-20">
                                                    <input type="radio" name="attendance[{{$already_assigned_staff->StaffInfo->id}}]" id="attendanceP{{$already_assigned_staff->StaffInfo->id}}" value="P" class="common-radio attendanceP" {{$already_assigned_staff->attendence_type == "P"? 'checked':''}}>
                                                    <label for="attendanceP{{$already_assigned_staff->StaffInfo->id}}">@lang('lang.present')</label>
                                                </div>
                                                <div class="mr-20">
                                                    <input type="radio" name="attendance[{{$already_assigned_staff->StaffInfo->id}}]" id="attendanceL{{$already_assigned_staff->StaffInfo->id}}" value="L" class="common-radio" {{$already_assigned_staff->attendence_type == "L"? 'checked':''}}>
                                                    <label for="attendanceL{{$already_assigned_staff->StaffInfo->id}}">@lang('lang.late')</label>
                                                </div>
                                                <div class="mr-20">
                                                    <input type="radio" name="attendance[{{$already_assigned_staff->StaffInfo->id}}]" id="attendanceA{{$already_assigned_staff->StaffInfo->id}}" value="A" class="common-radio" {{$already_assigned_staff->attendence_type == "A"? 'checked':''}}>
                                                    <label for="attendanceA{{$already_assigned_staff->StaffInfo->id}}">@lang('lang.absent')</label>
                                                </div>
                                                <div>
                                                    <input type="radio" name="attendance[{{$already_assigned_staff->StaffInfo->id}}]" id="attendanceH{{$already_assigned_staff->StaffInfo->id}}" value="F" class="common-radio" {{$already_assigned_staff->attendence_type == "F"? 'checked':''}}>
                                                    <label for="attendanceH{{$already_assigned_staff->StaffInfo->id}}">@lang('lang.holiday')</label>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-effect">
                                                <textarea class="primary-input form-control" cols="0" rows="2" name="note[{{$already_assigned_staff->StaffInfo->id}}]" id="">{{$already_assigned_staff->notes}}</textarea>
                                                <label>@lang('lang.add_note_here')</label>
                                                <span class="focus-border textarea"></span>
                                                <span class="invalid-feedback">
                                                    <strong>@lang('lang.error')</strong>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                    @foreach($new_staffs as $staff)
                                    <tr>
                                        <td>{{$staff->staff_no}}<input type="hidden" name="id[]" value="{{$staff->id}}"></td>
                                        <td>{{$staff->first_name.' '.$staff->last_name}}</td>
                                        <td>{{$staff->roles !=""?$staff->roles->name:""}}</td>
                                        <td>
                                            <div class="d-flex radio-btn-flex">
                                                <div class="mr-20">
                                                    <input type="radio" name="attendance[{{$staff->id}}]" id="attendanceP{{$staff->id}}" value="P" class="common-radio attendanceP" checked>
                                                    <label for="attendanceP{{$staff->id}}">@lang('lang.present')</label>
                                                </div>
                                                <div class="mr-20">
                                                    <input type="radio" name="attendance[{{$staff->id}}]" id="attendanceL{{$staff->id}}" value="L" class="common-radio">
                                                    <label for="attendanceL{{$staff->id}}">@lang('lang.late')</label>
                                                </div>
                                                <div class="mr-20">
                                                    <input type="radio" name="attendance[{{$staff->id}}]" id="attendanceA{{$staff->id}}" value="A" class="common-radio">
                                                    <label for="attendanceA{{$staff->id}}">@lang('lang.absent')</label>
                                                </div>
                                                <div>
                                                    <input type="radio" name="attendance[{{$staff->id}}]" id="attendanceH{{$staff->id}}" value="F" class="common-radio">
                                                    <label for="attendanceH{{$staff->id}}">@lang('lang.holiday')</label>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="input-effect">
                                                <textarea class="primary-input form-control" cols="0" rows="2" name="note[{{$staff->id}}]" id=""></textarea>
                                                <label>@lang('lang.add_note_here')</label>
                                                <span class="focus-border textarea"></span>
                                                <span class="invalid-feedback">
                                                    <strong>@lang('lang.error')</strong>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {{ Form::close() }}
                </div>
            </div>
@endif

    </div>
</section>


@endsection

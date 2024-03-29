<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Response;

//ADMIN
Route::post('logout', 'Auth\LoginController@logout')->name('logout');

Route::get('reg', function () {

    return view('auth.register');
});

Route::group(['middleware' => ['XSS']], function () {

    // User Auth Routes
    Route::group(['middleware' => ['CheckDashboardMiddleware']], function () {

        Route::get('staff-download-timeline-doc/{file_name}', function ($file_name = null) {
            // return "Timeline";
            $file = public_path() . '/uploads/student/timeline/' . $file_name;
            // echo $file;
            // exit();
            if (file_exists($file)) {
                return Response::download($file);
            }
            return redirect()->back();
        });

        /* ******************* Dashboard Setting ***************************** */
        Route::get('dashboard/display-setting', 'SmSystemSettingController@displaySetting');
        Route::post('dashboard/display-setting-update', 'SmSystemSettingController@displaySettingUpdate');


        /* ******************* Dashboard Setting ***************************** */
        Route::get('api/permission', 'SmSystemSettingController@apiPermission');
        Route::get('api-permission-update', 'SmSystemSettingController@apiPermissionUpdate');
        /* ******************* Dashboard Setting ***************************** */

        Route::get('delete-student-document/{id}', ['as' => 'delete-student-document', 'uses' => 'SmStudentAdmissionController@deleteDocument']);


        Route::view('/admin-setup', 'frontEnd.admin_setup');
        Route::view('/general-setting', 'frontEnd.general_setting');
        Route::view('/student-id', 'frontEnd.student_id');
        Route::view('/add-homework', 'frontEnd.add_homework');
        // Route::view('/fees-collection-invoice', 'frontEnd.fees_collection_invoice');
        Route::view('/exam-promotion-naim', 'frontEnd.exam_promotion');
        Route::view('/front-cms-gallery', 'frontEnd.front_cms_gallery');
        Route::view('/front-cms-media-manager', 'frontEnd.front_cms_media_manager');
        Route::view('/reports-class', 'frontEnd.reports_class');
        Route::view('/human-resource-payroll-generate', 'frontEnd.human_resource_payroll_generate');
        // Route::view('/fees-collection-collect-fees', 'frontEnd.fees_collection_collect_fees');
        Route::view('/calendar', 'frontEnd.calendar');
        Route::view('/design', 'frontEnd.design');
        Route::view('/loginn', 'frontEnd.login');
        Route::view('/dash-board/super-admin', 'frontEnd.dashBoard.super_admin');
        Route::view('/admit-card-report', 'frontEnd.admit_card_report');
        Route::view('/reports-terminal-report2', 'frontEnd.reports_terminal_report');
        // Route::view('/reports-tabulation-sheet', 'frontEnd.reports_tabulation_sheet');
        Route::view('/system-settings-sms', 'frontEnd.system_settings_sms');
        Route::view('/front-cms-setting', 'frontEnd.front_cms_setting');
        Route::view('/base_setup_naim', 'frontEnd.base_setup');
        Route::view('/dark-home', 'frontEnd.home.dark_home');
        Route::view('/dark-about', 'frontEnd.home.dark_about');
        Route::view('/dark-news', 'frontEnd.home.dark_news');
        Route::view('/dark-news-details', 'frontEnd.home.dark_news_details');
        Route::view('/dark-course', 'frontEnd.home.dark_course');
        Route::view('/dark-course-details', 'frontEnd.home.dark_course_details');
        Route::view('/dark-department', 'frontEnd.home.dark_department');
        Route::view('/dark-contact', 'frontEnd.home.dark_contact');
        Route::view('/light-home', 'frontEnd.home.light_home');
        Route::view('/light-about', 'frontEnd.home.light_about');
        Route::view('/light-news', 'frontEnd.home.light_news');
        Route::view('/light-news-details', 'frontEnd.home.light_news_details');
        Route::view('/light-course', 'frontEnd.home.light_course');
        Route::view('/light-course-details', 'frontEnd.home.light_course_details');
        Route::view('/light-department', 'frontEnd.home.light_department');
        Route::view('/light-contact', 'frontEnd.home.light_contact');
        Route::view('/color-home', 'frontEnd.home.color_home');
        Route::view('/id-card', 'frontEnd.home.id_card');
        Route::view('/parentregistration/student-store','modules.parentregistration.registration');


        Route::get('/dashboard', 'HomeController@index')->name('dashboard');
        Route::get('add-toDo', 'HomeController@addToDo');
        Route::post('saveToDoData', 'HomeController@saveToDoData');
        Route::get('view-toDo/{id}', 'HomeController@viewToDo')->where('id', '[0-9]+');
        Route::get('edit-toDo/{id}', 'HomeController@editToDo')->where('id', '[0-9]+');
        Route::post('update-to-do', 'HomeController@updateToDo');
        Route::get('remove-to-do', 'HomeController@removeToDo');
        Route::get('get-to-do-list', 'HomeController@getToDoList');


        Route::get('admin-dashboard', 'HomeController@index')->name('admin-dashboard');


        //Role Setup
        Route::get('role', ['as' => 'role', 'uses' => 'RoleController@index']);
        Route::post('role-store', ['as' => 'role_store', 'uses' => 'RoleController@store']);
        Route::get('role-edit/{id}', ['as' => 'role_edit', 'uses' => 'RoleController@edit'])->where('id', '[0-9]+');
        Route::post('role-update', ['as' => 'role_update', 'uses' => 'RoleController@update']);
        Route::post('role-delete', ['as' => 'role_delete', 'uses' => 'RoleController@delete']);


        // Role Permission
        Route::get('assign-permission/{id}', ['as' => 'assign_permission', 'uses' => 'SmRolePermissionController@assignPermission']);
        Route::post('role-permission-store', ['as' => 'role_permission_store', 'uses' => 'SmRolePermissionController@rolePermissionStore']);


        // Module Permission

        Route::get('module-permission', 'RoleController@modulePermission');


        Route::get('assign-module-permission/{id}', 'RoleController@assignModulePermission');
        Route::post('module-permission-store', 'RoleController@assignModulePermissionStore');


        //User Route
        Route::get('user', ['as' => 'user', 'uses' => 'UserController@index']);
        Route::get('user-create', ['as' => 'user_create', 'uses' => 'UserController@create']);

        // Base group
        Route::get('base-group', ['as' => 'base_group', 'uses' => 'SmBaseGroupController@index']);
        Route::post('base-group-store', ['as' => 'base_group_store', 'uses' => 'SmBaseGroupController@store']);
        Route::get('base-group-edit/{id}', ['as' => 'base_group_edit', 'uses' => 'SmBaseGroupController@edit']);
        Route::post('base-group-update', ['as' => 'base_group_update', 'uses' => 'SmBaseGroupController@update']);
        Route::get('base-group-delete/{id}', ['as' => 'base_group_delete', 'uses' => 'SmBaseGroupController@delete']);

        // Base setup
        Route::get('base-setup', ['as' => 'base_setup', 'uses' => 'SmBaseSetupController@index']);
        Route::post('base-setup-store', ['as' => 'base_setup_store', 'uses' => 'SmBaseSetupController@store']);
        Route::get('base-setup-edit/{id}', ['as' => 'base_setup_edit', 'uses' => 'SmBaseSetupController@edit']);
        Route::post('base-setup-update', ['as' => 'base_setup_update', 'uses' => 'SmBaseSetupController@update']);
        Route::post('base-setup-delete', ['as' => 'base_setup_delete', 'uses' => 'SmBaseSetupController@delete']);

        //// Academics Routing

        // Class route
        Route::get('class', ['as' => 'class', 'uses' => 'SmClassController@index']);
        Route::post('class-store', ['as' => 'class_store', 'uses' => 'SmClassController@store']);
        Route::get('class-edit/{id}', ['as' => 'class_edit', 'uses' => 'SmClassController@edit']);
        Route::post('class-update', ['as' => 'class_update', 'uses' => 'SmClassController@update']);
        Route::get('class-delete/{id}', ['as' => 'class_delete', 'uses' => 'SmClassController@delete']);


        //*********************************************** START SUBJECT WISE ATTENDANCE ****************************************************** */
        Route::get('subject-wise-attendance',  'SmSubjectAttendanceController@index')->name('subject-wise-attendance');
        Route::post('subject-attendance-search',  'SmSubjectAttendanceController@search')->name('subject-attendance-search');
        Route::post('subject-attendance-store',  'SmSubjectAttendanceController@storeAttendance')->name('subject-attendance-store');


        // Student Attendance Report
        Route::get('subject-attendance-report', 'SmSubjectAttendanceController@subjectAttendanceReport');
        Route::post('subject-attendance-report-search', 'SmSubjectAttendanceController@subjectAttendanceReportSearch');
        Route::get('subject-attendance-report-search', 'SmSubjectAttendanceController@subjectAttendanceReport');
        // Route::get('subject-attendance-report/print/{class_id}/{section_id}/{month}/{year}', 'SmSubjectAttendanceController@subjectAttendanceReportPrint');
        Route::get('subject-attendance/print/{class_id}/{section_id}/{subject_id}/{month}/{year}', 'SmSubjectAttendanceController@subjectAttendanceReportPrint');
        //*********************************************** END SUBJECT WISE ATTENDANCE ****************************************************** */



        // Student Attendance Report
        Route::get('student-attendance-report', ['as' => 'student_attendance_report', 'uses' => 'SmStudentAdmissionController@studentAttendanceReport']);
        Route::post('student-attendance-report-search', ['as' => 'student_attendance_report_search', 'uses' => 'SmStudentAdmissionController@studentAttendanceReportSearch']);
        Route::get('student-attendance-report-search', 'SmStudentAdmissionController@studentAttendanceReport');
        Route::get('student-attendance/print/{class_id}/{section_id}/{month}/{year}', 'SmStudentAdmissionController@studentAttendanceReportPrint');


        //Class Section routes
        Route::get('optional-subject',  'SmOptionalSubjectAssignController@index')->name('optional-subject');

        Route::post('assign-optional-subject',  'SmOptionalSubjectAssignController@assignOptionalSubjectSearch')->name('assign_optional_subject_search');
        Route::post('assign-optional-subject-search',  'SmOptionalSubjectAssignController@assignOptionalSubject');
        Route::post('assign-optional-subject-store',  'SmOptionalSubjectAssignController@assignOptionalSubjectStore');


        Route::get('section', ['as' => 'section', 'uses' => 'SmSectionController@index']);

        Route::post('section-store', ['as' => 'section_store', 'uses' => 'SmSectionController@store']);
        Route::get('section-edit/{id}', ['as' => 'section_edit', 'uses' => 'SmSectionController@edit']);
        Route::post('section-update', ['as' => 'section_update', 'uses' => 'SmSectionController@update']);
        Route::get('section-delete/{id}', ['as' => 'section_delete', 'uses' => 'SmSectionController@delete']);

        // Subject routes
        Route::get('subject', ['as' => 'subject', 'uses' => 'SmSubjectController@index']);
        Route::post('subject-store', ['as' => 'subject_store', 'uses' => 'SmSubjectController@store']);
        Route::get('subject-edit/{id}', ['as' => 'subject_edit', 'uses' => 'SmSubjectController@edit']);
        Route::post('subject-update', ['as' => 'subject_update', 'uses' => 'SmSubjectController@update']);
        Route::get('subject-delete/{id}', ['as' => 'subject_delete', 'uses' => 'SmSubjectController@delete']);

        //Class Routine
        // Route::get('class-routine', ['as' => 'class_routine', 'uses' => 'SmAcademicsController@classRoutine']);
        // Route::get('class-routine-create', ['as' => 'class_routine_create', 'uses' => 'SmAcademicsController@classRoutineCreate']);
        Route::get('ajaxSelectSubject', 'SmAcademicsController@ajaxSelectSubject');
        Route::get('ajaxSelectCurrency', 'SmSystemSettingController@ajaxSelectCurrency');

        // Route::post('assign-routine-search', 'SmAcademicsController@assignRoutineSearch');
        // Route::get('assign-routine-search', 'SmAcademicsController@classRoutine');
        // Route::post('assign-routine-store', 'SmAcademicsController@assignRoutineStore');
        // Route::post('class-routine-report-search', 'SmAcademicsController@classRoutineReportSearch');
        // Route::get('class-routine-report-search', 'SmAcademicsController@classRoutineReportSearch');


        // class routine new

        Route::get('class-routine-new', ['as' => 'class_routine_new', 'uses' => 'SmClassRoutineNewController@classRoutine']);



        Route::post('class-routine-new', 'SmClassRoutineNewController@classRoutineSearch');
        Route::get('add-new-routine/{class_time_id}/{day}/{class_id}/{section_id}', 'SmClassRoutineNewController@addNewClassRoutine');

        Route::post('add-new-class-routine-store', 'SmClassRoutineNewController@addNewClassRoutineStore');


        Route::get('get-class-teacher-ajax', 'SmClassRoutineNewController@getClassTeacherAjax');
        Route::get('add-new-class-routine-store', 'SmClassRoutineNewController@classRoutineSearch');

        Route::get('edit-class-routine/{class_time_id}/{day}/{class_id}/{section_id}/{subject_id}/{room_id}/{assigned_id}/{teacher_id}', 'SmClassRoutineNewController@addNewClassRoutineEdit');

        Route::get('delete-class-routine-modal/{id}', 'SmClassRoutineNewController@deleteClassRoutineModal');
        Route::get('delete-class-routine/{id}', 'SmClassRoutineNewController@deleteClassRoutine');
        Route::get('class-routine-new/{class_id}/{section_id}', 'SmClassRoutineNewController@classRoutineRedirect');

        //Student Panel

        Route::get('view-teacher-routine', 'teacher\SmAcademicsController@viewTeacherRoutine');

        //assign subject
        Route::get('assign-subject', ['as' => 'assign_subject', 'uses' => 'AcademicController@assignSubject']);

        Route::get('assign-subject-create', ['as' => 'assign_subject_create', 'uses' => 'AcademicController@assigSubjectCreate']);

        Route::post('assign-subject-search', ['as' => 'assign_subject_search', 'uses' => 'AcademicController@assignSubjectSearch']);
        Route::get('assign-subject-search', 'AcademicController@assigSubjectCreate');
        Route::post('assign-subject-store', 'AcademicController@assignSubjectStore');
        Route::get('assign-subject-store', 'AcademicController@assigSubjectCreate');
        Route::post('assign-subject', 'AcademicController@assignSubjectFind');
        Route::get('assign-subject-get-by-ajax', 'AcademicController@assignSubjectAjax');

        //Assign Class Teacher
        Route::resource('assign-class-teacher', 'SmAssignClassTeacherControler');
        // Class room
        Route::resource('class-room', 'SmClassRoomController');
        Route::resource('class-time', 'SmClassTimeController');


        //Admission Query
        Route::get('admission-query', ['as' => 'admission_query', 'uses' => 'SmAdmissionQueryController@index']);

        Route::post('admission-query-store-a', ['as' => 'admission_query_store_a', 'uses' => 'SmAdmissionQueryController@admissionQueryStore']);

        Route::get('admission-query-edit/{id}', ['as' => 'admission_query_edit', 'uses' => 'SmAdmissionQueryController@admissionQueryEdit']);
        Route::post('admission-query-update', ['as' => 'admission_query_update', 'uses' => 'SmAdmissionQueryController@admissionQueryUpdate']);
        Route::get('add-query/{id}', ['as' => 'add_query', 'uses' => 'SmAdmissionQueryController@addQuery']);
        Route::post('query-followup-store', ['as' => 'query_followup_store', 'uses' => 'SmAdmissionQueryController@queryFollowupStore']);
        Route::get('delete-follow-up/{id}', ['as' => 'delete_follow_up', 'uses' => 'SmAdmissionQueryController@deleteFollowUp']);
        Route::post('admission-query-delete', ['as' => 'admission_query_delete', 'uses' => 'SmAdmissionQueryController@admissionQueryDelete']);

        Route::post('admission-query-search', 'SmAdmissionQueryController@admissionQuerySearch');
        Route::get('admission-query-search', 'SmAdmissionQueryController@index');

        // Visitor routes

        Route::get('visitor', ['as' => 'visitor', 'uses' => 'SmVisitorController@index']);
        Route::post('visitor-store', ['as' => 'visitor_store', 'uses' => 'SmVisitorController@store']);
        Route::get('visitor-edit/{id}', ['as' => 'visitor_edit', 'uses' => 'SmVisitorController@edit']);
        Route::post('visitor-update', ['as' => 'visitor_update', 'uses' => 'SmVisitorController@update']);
        Route::get('visitor-delete/{id}', ['as' => 'visitor_delete', 'uses' => 'SmVisitorController@delete']);
        Route::get('download-visitor-document/{file_name}', ['as' => 'visitor_download', 'uses' => 'SmVisitorController@download_files']);

        // Route::get('download-visitor-document/{file_name}', function ($file_name = null) {

        //     $file = public_path() . '/uploads/visitor/' . $file_name;
        //     if (file_exists($file)) {
        //         return Response::download($file);
        //     }
        // });

        // Fees Group routes
        Route::get('fees-group', ['as' => 'fees_group', 'uses' => 'SmFeesGroupController@index']);
        Route::post('fees-group-store', ['as' => 'fees_group_store', 'uses' => 'SmFeesGroupController@store']);
        Route::get('fees-group-edit/{id}', ['as' => 'fees_group_edit', 'uses' => 'SmFeesGroupController@edit']);
        Route::post('fees-group-update', ['as' => 'fees_group_update', 'uses' => 'SmFeesGroupController@update']);
        Route::post('fees-group-delete', ['as' => 'fees_group_delete', 'uses' => 'SmFeesGroupController@deleteGroup']);

        // Fees type routes
        Route::get('fees-type', ['as' => 'fees_type', 'uses' => 'SmFeesTypeController@index']);
        Route::post('fees-type-store', ['as' => 'fees_type_store', 'uses' => 'SmFeesTypeController@store']);
        Route::get('fees-type-edit/{id}', ['as' => 'fees_type_edit', 'uses' => 'SmFeesTypeController@edit']);
        Route::post('fees-type-update', ['as' => 'fees_type_update', 'uses' => 'SmFeesTypeController@update']);
        Route::get('fees-type-delete/{id}', ['as' => 'fees_type_delete', 'uses' => 'SmFeesTypeController@delete']);

        // Fees Discount routes
        Route::get('fees-discount', ['as' => 'fees_discount', 'uses' => 'SmFeesDiscountController@index']);
        Route::post('fees-discount-store', ['as' => 'fees_discount_store', 'uses' => 'SmFeesDiscountController@store']);
        Route::get('fees-discount-edit/{id}', ['as' => 'fees_discount_edit', 'uses' => 'SmFeesDiscountController@edit']);
        Route::post('fees-discount-update', ['as' => 'fees_discount_update', 'uses' => 'SmFeesDiscountController@update']);
        Route::get('fees-discount-delete/{id}', ['as' => 'fees_discount_delete', 'uses' => 'SmFeesDiscountController@delete']);
        Route::get('fees-discount-assign/{id}', ['as' => 'fees_discount_assign', 'uses' => 'SmFeesDiscountController@feesDiscountAssign']);
        Route::post('fees-discount-assign-search', 'SmFeesDiscountController@feesDiscountAssignSearch');
        Route::get('fees-discount-assign-store', 'SmFeesDiscountController@feesDiscountAssignStore');

        Route::get('fees-generate-modal/{amount}/{student_id}/{type}/{master}', 'SmFeesController@feesGenerateModal');
        Route::get('fees-discount-amount-search', 'SmFeesDiscountController@feesDiscountAmountSearch');
        // delete fees payment
        Route::post('fees-payment-delete', 'SmFeesController@feesPaymentDelete');

        // Fees carry forward
        Route::get('fees-forward', ['as' => 'fees_forward', 'uses' => 'SmFeesController@feesForward']);
        Route::post('fees-forward-search', 'SmFeesController@feesForwardSearch');
        Route::get('fees-forward-search', 'SmFeesController@feesForward');

        Route::post('fees-forward-store', 'SmFeesController@feesForwardStore');
        Route::get('fees-forward-store', 'SmFeesController@feesForward');

        //fees payment store
        Route::post('fees-payment-store', 'SmFeesController@feesPaymentStore');

         Route::get('bank-slip-view/{file_name}', function ($file_name = null) {

            $file = public_path() . '/uploads/bankSlip/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        // Collect Fees
        Route::get('collect-fees', ['as' => 'collect_fees', 'uses' => 'SmFeesController@collectFees']);
        Route::get('fees-collect-student-wise/{id}', ['as' => 'fees_collect_student_wise', 'uses' => 'SmFeesController@collectFeesStudent'])->where('id', '[0-9]+');

        Route::post('collect-fees', ['as' => 'collect_fees', 'uses' => 'SmFeesController@collectFeesSearch']);


        // fees print
        Route::get('fees-payment-print/{id}/{group}', ['as' => 'fees_payment_print', 'uses' => 'SmFeesController@feesPaymentPrint']);

        Route::get('fees-payment-invoice-print/{id}/{group}', ['as' => 'fees_payment_invoice_print', 'uses' => 'SmFeesController@feesPaymentInvoicePrint']);

        Route::get('fees-group-print/{id}', ['as' => 'fees_group_print', 'uses' => 'SmFeesController@feesGroupPrint'])->where('id', '[0-9]+');

        Route::get('fees-groups-print/{id}/{s_id}', 'SmFeesController@feesGroupsPrint');

        //Search Fees Payment
        Route::get('search-fees-payment', ['as' => 'search_fees_payment', 'uses' => 'SmFeesController@searchFeesPayment']);
        Route::post('fees-payment-search', ['as' => 'fees_payment_search', 'uses' => 'SmFeesController@feesPaymentSearch']);
        Route::get('fees-payment-search', ['as' => 'fees_payment_search', 'uses' => 'SmFeesController@searchFeesPayment']);

        //Fees Search due
        Route::get('search-fees-due', ['as' => 'search_fees_due', 'uses' => 'SmFeesController@searchFeesDue']);
        Route::post('fees-due-search', ['as' => 'fees_due_search', 'uses' => 'SmFeesController@feesDueSearch']);
        Route::get('fees-due-search', ['as' => 'fees_due_search', 'uses' => 'SmFeesController@searchFeesDue']);


        Route::post('send-dues-fees-email', 'SmFeesController@sendDuesFeesEmail');

        // fees bank slip approve
        Route::get('bank-payment-slip', 'SmFeesController@bankPaymentSlip');
        Route::post('approve-fees-payment', 'SmFeesController@approveFeesPayment');



        //Fees Statement
        Route::get('fees-statement', ['as' => 'fees_statement', 'uses' => 'SmFeesController@feesStatemnt']);
        Route::post('fees-statement-search', ['as' => 'fees_statement_search', 'uses' => 'SmFeesController@feesStatementSearch']);

        // Balance fees report
        Route::get('balance-fees-report', ['as' => 'balance_fees_report', 'uses' => 'SmFeesController@balanceFeesReport']);
        Route::post('balance-fees-search', ['as' => 'balance_fees_search', 'uses' => 'SmFeesController@balanceFeesSearch']);
        Route::get('balance-fees-search', ['as' => 'balance_fees_search', 'uses' => 'SmFeesController@balanceFeesReport']);

        // Transaction Report
        Route::get('transaction-report', ['as' => 'transaction_report', 'uses' => 'SmFeesController@transactionReport']);
        Route::post('transaction-report-search', ['as' => 'transaction_report_search', 'uses' => 'SmFeesController@transactionReportSearch']);
        Route::get('transaction-report-search', ['as' => 'transaction_report_search', 'uses' => 'SmFeesController@transactionReport']);

        // Class Report
        Route::get('class-report', ['as' => 'class_report', 'uses' => 'SmAcademicsController@classReport']);
        Route::post('class-report', ['as' => 'class_report', 'uses' => 'SmAcademicsController@classReportSearch']);


        // merit list Report
        Route::get('merit-list-report', ['as' => 'merit_list_report', 'uses' => 'SmExaminationController@meritListReport']);
        Route::post('merit-list-report', ['as' => 'merit_list_report', 'uses' => 'SmExaminationController@meritListReportSearch']);
        Route::get('merit-list/print/{exam_id}/{class_id}/{section_id}',  'SmExaminationController@meritListPrint');


        //tabulation sheet report
        Route::get('reports-tabulation-sheet', ['as' => 'reports_tabulation_sheet', 'uses' => 'SmExaminationController@reportsTabulationSheet']);
        Route::post('reports-tabulation-sheet', ['as' => 'reports_tabulation_sheet', 'uses' => 'SmExaminationController@reportsTabulationSheetSearch']);


        //results-archive report resultsArchive
        Route::get('results-archive', 'SmExaminationController@resultsArchiveView');
        Route::get('get-archive-class', 'SmExaminationController@getArchiveClass');
        Route::post('results-archive',  'SmExaminationController@resultsArchiveSearch');

        //Previous Record
        Route::get('previous-record', 'SmStudentAdmissionController@previousRecord');
        Route::post('previous-record',  'SmStudentAdmissionController@previousRecordSearch');

        //previous-class-results
        Route::get('previous-class-results', 'SmExaminationController@previousClassResults');
        Route::post('previous-class-results-view', 'SmExaminationController@previousClassResultsViewPost');

        Route::post('session-student', 'SmExaminationController@sessionStudentGet')->name('session_student');

        Route::post('previous-class-results/print', 'SmExaminationController@sessionStudentPrint')->name('session_student_print');

        // merit list Report
        Route::get('online-exam-report', ['as' => 'online_exam_report', 'uses' => 'SmOnlineExamController@onlineExamReport']);
        Route::post('online-exam-report', ['as' => 'online_exam_report', 'uses' => 'SmOnlineExamController@onlineExamReportSearch']);


        // class routine report

        Route::get('class-routine-report', ['as' => 'class_routine_report', 'uses' => 'SmClassRoutineNewController@classRoutineReport']);
        Route::post('class-routine-report', 'SmClassRoutineNewController@classRoutineReportSearch');


        // exam routine report
        Route::get('exam-routine-report', ['as' => 'exam_routine_report', 'uses' => 'SmExamRoutineController@examRoutineReport']);
        Route::post('exam-routine-report', ['as' => 'exam_routine_report', 'uses' => 'SmExamRoutineController@examRoutineReportSearch']);


        Route::get('exam-routine/print/{exam_id}', 'SmExamRoutineController@examRoutineReportSearchPrint');

        Route::get('teacher-class-routine-report', ['as' => 'teacher_class_routine_report', 'uses' => 'SmClassRoutineNewController@teacherClassRoutineReport']);
        Route::post('teacher-class-routine-report', 'SmClassRoutineNewController@teacherClassRoutineReportSearch');


        // mark sheet Report
        Route::get('mark-sheet-report', ['as' => 'mark_sheet_report', 'uses' => 'SmExaminationController@markSheetReport']);
        Route::post('mark-sheet-report', ['as' => 'mark_sheet_report', 'uses' => 'SmExaminationController@markSheetReportSearch']);
        Route::get('mark-sheet-report/print/{exam_id}/{class_id}/{section_id}/{student_id}', ['as' => 'mark_sheet_report', 'uses' => 'SmExaminationController@markSheetReportStudentPrint']);


        //mark sheet report student
        Route::get('mark-sheet-report-student', ['as' => 'mark_sheet_report_student', 'uses' => 'SmExaminationController@markSheetReportStudent']);
        Route::post('mark-sheet-report-student', ['as' => 'mark_sheet_report_student', 'uses' => 'SmExaminationController@markSheetReportStudentSearch']);


        //user log
        Route::get('student-fine-report', ['as' => 'student_fine_report', 'uses' => 'SmFeesController@studentFineReport']);
        Route::post('student-fine-report', ['as' => 'student_fine_report', 'uses' => 'SmFeesController@studentFineReportSearch']);


        //user log
        Route::get('user-log', ['as' => 'user_log', 'uses' => 'UserController@userLog']);


        // income head routes
        Route::get('income-head', ['as' => 'income_head', 'uses' => 'SmIncomeHeadController@index']);
        Route::post('income-head-store', ['as' => 'income_head_store', 'uses' => 'SmIncomeHeadController@store']);
        Route::get('income-head-edit/{id}', ['as' => 'income_head_edit', 'uses' => 'SmIncomeHeadController@edit']);
        Route::post('income-head-update', ['as' => 'income_head_update', 'uses' => 'SmIncomeHeadController@update']);
        Route::get('income-head-delete/{id}', ['as' => 'income_head_delete', 'uses' => 'SmIncomeHeadController@delete']);

        // Search account
        Route::get('search-account', ['as' => 'search_account', 'uses' => 'SmAccountsController@searchAccount']);
        Route::post('search-account', ['as' => 'search_account', 'uses' => 'SmAccountsController@searchAccountReportByDate']);


        // // Search Expense
        // Route::get('search-expense', ['as' => 'search_expense', 'uses' => 'SmAccountsController@searchExpense']);
        // Route::post('search-expense-report-by-date', ['as' => 'search_expense_report_by_date', 'uses' => 'SmAccountsController@searchExpenseReportByDate']);
        // Route::get('search-expense-report-by-date', ['as' => 'search_expense_report_by_date', 'uses' => 'SmAccountsController@searchExpense']);
        // Route::post('search-expense-report-by-income', ['as' => 'search_expense_report_by_income', 'uses' => 'SmAccountsController@searchExpenseReportByIncome']);


        // add income routes
        Route::get('add-income', ['as' => 'add_income', 'uses' => 'SmAddIncomeController@index']);
        Route::post('add-income-store', ['as' => 'add_income_store', 'uses' => 'SmAddIncomeController@store']);
        Route::get('add-income-edit/{id}', ['as' => 'add_income_edit', 'uses' => 'SmAddIncomeController@edit']);
        Route::post('add-income-update', ['as' => 'add_income_update', 'uses' => 'SmAddIncomeController@update']);
        Route::post('add-income-delete', ['as' => 'add_income_delete', 'uses' => 'SmAddIncomeController@delete']);


        // Profit of account
        Route::get('profit', ['as' => 'profit', 'uses' => 'SmAccountsController@profit']);
        Route::post('search-profit-by-date', ['as' => 'search_profit_by_date', 'uses' => 'SmAccountsController@searchProfitByDate']);
        Route::get('search-profit-by-date', ['as' => 'search_profit_by_date', 'uses' => 'SmAccountsController@profit']);

        // Student Type Routes

        Route::get('student-category', ['as' => 'student_category', 'uses' => 'SmStudentCategoryController@index']);
        Route::post('student-category-store', ['as' => 'student_category_store', 'uses' => 'SmStudentCategoryController@store']);
        Route::get('student-category-edit/{id}', ['as' => 'student_category_edit', 'uses' => 'SmStudentCategoryController@edit']);
        Route::post('student-category-update', ['as' => 'student_category_update', 'uses' => 'SmStudentCategoryController@update']);
        Route::get('student-category-delete/{id}', ['as' => 'student_category_delete', 'uses' => 'SmStudentCategoryController@delete']);

        // Student Group Routes

        Route::get('student-group', ['as' => 'student_group', 'uses' => 'SmStudentGroupController@index']);
        Route::post('student-group-store', ['as' => 'student_group_store', 'uses' => 'SmStudentGroupController@store']);
        Route::get('student-group-edit/{id}', ['as' => 'student_group_edit', 'uses' => 'SmStudentGroupController@edit']);
        Route::post('student-group-update', ['as' => 'student_group_update', 'uses' => 'SmStudentGroupController@update']);
        Route::get('student-group-delete/{id}', ['as' => 'student_group_delete', 'uses' => 'SmStudentGroupController@delete']);

        // Student Group Routes

        Route::get('payment-method', ['as' => 'payment_method', 'uses' => 'SmPaymentMethodController@index']);
        Route::post('payment-method-store', ['as' => 'payment_method_store', 'uses' => 'SmPaymentMethodController@store']);
        Route::get('payment-method-edit/{id}', ['as' => 'payment_method_edit', 'uses' => 'SmPaymentMethodController@edit']);
        Route::post('payment-method-update', ['as' => 'payment_method_update', 'uses' => 'SmPaymentMethodController@update']);
        Route::get('payment-method-delete/{id}', ['as' => 'payment_method_delete', 'uses' => 'SmPaymentMethodController@delete']);

        //academic year
        Route::resource('academic-year', 'SmAcademicYearController');

        //Session
        Route::resource('session', 'SmSessionController');


        // exam

        Route::get('exam-reset', 'SmExamController@exam_reset');

        Route::resource('exam', 'SmExamController');
        Route::get('exam-marks-setup/{id}', 'SmExamController@exam_setup')->where('id', '[0-9]+');
        Route::get('get-class-subjects', 'SmExamController@getClassSubjects');
        Route::get('subject-assign-check', 'SmExamController@subjectAssignCheck');


        // Dormitory Module
        //Dormitory List
        Route::resource('dormitory-list', 'SmDormitoryListController');

        //Room Type
        Route::resource('room-type', 'SmRoomTypeController');

        //Room Type
        Route::resource('room-list', 'SmRoomListController');
        // Student Dormitory Report
        Route::get('student-dormitory-report', ['as' => 'student_dormitory_report', 'uses' => 'SmDormitoryController@studentDormitoryReport']);

        Route::post('student-dormitory-report', ['as' => 'student_dormitory_report', 'uses' => 'SmDormitoryController@studentDormitoryReportSearch']);


        // Transport Module Start
        //Vehicle
        Route::resource('vehicle', 'SmVehicleController');

        //Assign Vehicle
        Route::resource('assign-vehicle', 'SmAssignVehicleController');
        Route::post('assign-vehicle-delete', 'SmAssignVehicleController@delete');

        // student transport report

        Route::get('student-transport-report', ['as' => 'student_transport_report', 'uses' => 'SmTransportController@studentTransportReport']);



        Route::post('student-transport-report', ['as' => 'student_transport_report', 'uses' => 'SmTransportController@studentTransportReportSearch']);


        // Route transport
        Route::resource('transport-route', 'SmRouteController');

        //// Examination
        // instruction Routes
        Route::resource('instruction', 'SmInstructionController');

        // Question Level
        Route::resource('question-level', 'SmQuestionLevelController');

        // Question group
        Route::resource('question-group', 'SmQuestionGroupController');

        // Question bank
        Route::resource('question-bank', 'SmQuestionBankController');


        // Marks Grade
        Route::resource('marks-grade', 'SmMarksGradeController');


        // exam
        Route::resource('exam', 'SmExamController');

        Route::get('exam-type', 'SmExaminationController@exam_type');
        Route::get('exam-type-edit/{id}', ['as' => 'exam_type_edit', 'uses' => 'SmExaminationController@exam_type_edit']);
        Route::post('exam-type-store', ['as' => 'exam_type_store', 'uses' => 'SmExaminationController@exam_type_store']);
        Route::post('exam-type-update', ['as' => 'exam_type_update', 'uses' => 'SmExaminationController@exam_type_update']);
        Route::get('exam-type-delete/{id}', ['as' => 'exam_type_delete', 'uses' => 'SmExaminationController@exam_type_delete']);


        Route::get('exam-setup/{id}', 'SmExamController@examSetup');
        Route::post('exam-setup-store', 'SmExamController@examSetupStore');


        // exam
        Route::resource('department', 'SmHumanDepartmentController');

        Route::post('exam-schedule-store', ['as' => 'exam_schedule_store', 'uses' => 'SmExaminationController@examScheduleStore']);
        Route::get('exam-schedule-store', ['as' => 'exam_schedule_store', 'uses' => 'SmExaminationController@examScheduleCreate']);

        //Exam Schedule
        Route::get('exam-schedule', ['as' => 'exam_schedule', 'uses' => 'SmExamRoutineController@examSchedule']);

        Route::post('exam-schedule-report-search', ['as' => 'exam_schedule_report_search', 'uses' => 'SmExamRoutineController@examScheduleReportSearch']);

        Route::get('exam-schedule-report-search', ['as' => 'exam_schedule_report_search', 'uses' => 'SmExaminationController@examSchedule']);
        Route::get('exam-schedule/print/{exam_id}/{class_id}/{section_id}', ['as' => 'exam_schedule_print', 'uses' => 'SmExamRoutineController@examSchedulePrint']);
        Route::get('view-exam-schedule/{class_id}/{section_id}/{exam_id}', ['as' => 'view_exam_schedule', 'uses' => 'SmExaminationController@viewExamSchedule']);


        //Exam Schedule create
        Route::get('exam-schedule-create', ['as' => 'exam_schedule_create', 'uses' => 'SmExamRoutineController@examScheduleCreate']);
        Route::post('exam-schedule-create', ['as' => 'exam_schedule_create', 'uses' => 'SmExamRoutineController@examScheduleSearch']);


        Route::get('add-exam-routine-modal/{subject_id}/{exam_period_id}/{class_id}/{section_id}/{exam_term_id}', 'SmExamRoutineController@addExamRoutineModal');


        Route::get('check-exam-routine-period', 'SmExamRoutineController@checkExamRoutinePeriod');

        Route::get('edit-exam-routine-modal/{subject_id}/{exam_period_id}/{class_id}/{section_id}/{exam_term_id}/{assigned_id}', 'SmExamRoutineController@EditExamRoutineModal');

        Route::get('delete-exam-routine-modal/{assigned_id}', 'SmExamRoutineController@deleteExamRoutineModal');
        Route::get('delete-exam-routine/{assigned_id}', 'SmExamRoutineController@deleteExamRoutine');

        Route::post('add-exam-routine-store', 'SmExamRoutineController@addExamRoutineStore');

        Route::get('check-exam-routine-date', 'SmExamRoutineController@checkExamRoutineDate');

        Route::get('exam-routine-view/{class_id}/{section_id}/{exam_period_id}', 'SmExamRoutineController@examRoutineView');


        //view exam status
        Route::get('view-exam-status/{exam_id}', ['as' => 'view_exam_status', 'uses' => 'SmExaminationController@viewExamStatus']);

        // marks register
        Route::get('marks-register', ['as' => 'marks_register', 'uses' => 'SmExaminationController@marksRegister']);
        Route::post('marks-register', ['as' => 'marks_register', 'uses' => 'SmExaminationController@marksRegisterReportSearch']);

        Route::get('marks-register-create', ['as' => 'marks_register_create', 'uses' => 'SmExaminationController@marksRegisterCreate']);


        Route::post('marks-register-create', ['as' => 'marks_register_create', 'uses' => 'SmExaminationController@marksRegisterSearch']);

        Route::post('marks_register_store', ['as' => 'marks_register_store', 'uses' => 'SmExaminationController@marksRegisterStore']);


        //Seat Plan
        Route::get('seat-plan', ['as' => 'seat_plan', 'uses' => 'SmExaminationController@seatPlan']);
        Route::post('seat-plan-report-search', ['as' => 'seat_plan_report_search', 'uses' => 'SmExaminationController@seatPlanReportSearch']);
        Route::get('seat-plan-report-search', ['as' => 'seat_plan_report_search', 'uses' => 'SmExaminationController@seatPlan']);

        Route::get('seat-plan-create', ['as' => 'seat_plan_create', 'uses' => 'SmExaminationController@seatPlanCreate']);

        Route::post('seat-plan-store', ['as' => 'seat_plan_store', 'uses' => 'SmExaminationController@seatPlanStore']);
        Route::get('seat-plan-store', ['as' => 'seat_plan_store', 'uses' => 'SmExaminationController@seatPlanCreate']);

        Route::post('seat-plan-search', ['as' => 'seat_plan_search', 'uses' => 'SmExaminationController@seatPlanSearch']);
        Route::get('seat-plan-search', ['as' => 'seat_plan_search', 'uses' => 'SmExaminationController@seatPlanCreate']);
        Route::get('assign-exam-room-get-by-ajax', ['as' => 'assign-exam-room-get-by-ajax', 'uses' => 'SmExaminationController@getExamRoomByAjax']);
        Route::get('get-room-capacity', ['as' => 'get-room-capacity', 'uses' => 'SmExaminationController@getRoomCapacity']);


        // Exam Attendance
        Route::get('exam-attendance', ['as' => 'exam_attendance', 'uses' => 'SmExaminationController@examAttendance']);
        Route::post('exam-attendance', ['as' => 'exam_attendance', 'uses' => 'SmExaminationController@examAttendanceAeportSearch']);


        Route::get('exam-attendance-create', ['as' => 'exam_attendance_create', 'uses' => 'SmExaminationController@examAttendanceCreate']);
        Route::post('exam-attendance-create', ['as' => 'exam_attendance_create', 'uses' => 'SmExaminationController@examAttendanceSearch']);


        Route::post('exam-attendance-store', 'SmExaminationController@examAttendanceStore');

        // Send Marks By SmS
        Route::get('send-marks-by-sms', ['as' => 'send_marks_by_sms', 'uses' => 'SmExaminationController@sendMarksBySms']);
        Route::post('send-marks-by-sms-store', ['as' => 'send_marks_by_sms_store', 'uses' => 'SmExaminationController@sendMarksBySmsStore']);

        // Online Exam
        Route::resource('online-exam', 'SmOnlineExamController');
        Route::post('online-exam-delete', 'SmOnlineExamController@delete');
        Route::get('manage-online-exam-question/{id}', ['as' => 'manage_online_exam_question', 'uses' => 'SmOnlineExamController@manageOnlineExamQuestion']);
        Route::post('online_exam_question_store', ['as' => 'online_exam_question_store', 'uses' => 'SmOnlineExamController@manageOnlineExamQuestionStore']);

        Route::get('online-exam-publish/{id}', ['as' => 'online_exam_publish', 'uses' => 'SmOnlineExamController@onlineExamPublish']);
        Route::get('online-exam-publish-cancel/{id}', ['as' => 'online_exam_publish_cancel', 'uses' => 'SmOnlineExamController@onlineExamPublishCancel']);

        Route::get('online-question-edit/{id}/{type}/{examId}', 'SmOnlineExamController@onlineQuestionEdit');
        Route::post('online-exam-question-edit', ['as' => 'online_exam_question_edit', 'uses' => 'SmOnlineExamController@onlineExamQuestionEdit']);
        Route::post('online-exam-question-delete', 'SmOnlineExamController@onlineExamQuestionDelete');

        // store online exam question
        Route::post('online-exam-question-assign', ['as' => 'online_exam_question_assign', 'uses' => 'SmOnlineExamController@onlineExamQuestionAssign']);

        Route::get('view_online_question_modal/{id}', ['as' => 'view_online_question_modal', 'uses' => 'SmOnlineExamController@viewOnlineQuestionModal']);


        // Online exam marks
        Route::get('online-exam-marks-register/{id}', ['as' => 'online_exam_marks_register', 'uses' => 'SmOnlineExamController@onlineExamMarksRegister']);

        Route::post('online-exam-marks-store', ['as' => 'online_exam_marks_store', 'uses' => 'SmOnlineExamController@onlineExamMarksStore']);
        Route::get('online-exam-result/{id}', ['as' => 'online_exam_result', 'uses' => 'SmOnlineExamController@onlineExamResult']);

        Route::get('online-exam-marking/{exam_id}/{s_id}', ['as' => 'online_exam_marking', 'uses' => 'SmOnlineExamController@onlineExamMarking']);
        Route::post('online-exam-marks-store', ['as' => 'online_exam_marks_store', 'uses' => 'SmOnlineExamController@onlineExamMarkingStore']);


        // Staff Hourly rate
        Route::resource('hourly-rate', 'SmHourlyRateController');

        // Staff leave type
        Route::resource('leave-type', 'SmLeaveTypeController');

        // Staff leave define
        Route::resource('leave-define', 'SmLeaveDefineController');

        // Staff leave define
        Route::resource('apply-leave', 'SmLeaveRequestController');

        // Staff designation
        Route::resource('designation', 'SmDesignationController');

        Route::resource('approve-leave', 'SmApproveLeaveController');
        Route::get('pending-leave', 'SmApproveLeaveController@pendingLeave');


        Route::post('update-approve-leave', 'SmApproveLeaveController@updateApproveLeave');

        Route::get('/staffNameByRole', 'SmApproveLeaveController@staffNameByRole');

        Route::get('view-leave-details-approve/{id}', 'SmApproveLeaveController@viewLeaveDetails');
        Route::get('view-leave-details-apply/{id}', 'SmLeaveRequestController@viewLeaveDetails');

        // Bank Account
        Route::resource('bank-account', 'SmBankAccountController');

        // Expense head
        Route::resource('expense-head', 'SmExpenseHeadController');

        // Chart Of Account
        Route::resource('chart-of-account', 'SmChartOfAccountController');

        // Add Expense
        Route::resource('add-expense', 'SmAddExpenseController');

        // Fees Master
        Route::resource('fees-master', 'SmFeesMasterController');
        Route::post('fees-master-single-delete', 'SmFeesMasterController@deleteSingle');
        Route::post('fees-master-group-delete', 'SmFeesMasterController@deleteGroup');
        Route::get('fees-assign/{id}', ['as' => 'fees_assign', 'uses' => 'SmFeesMasterController@feesAssign']);
        Route::post('fees-assign-search', 'SmFeesMasterController@feesAssignSearch');

        Route::get('btn-assign-fees-group', 'SmFeesMasterController@feesAssignStore');

        // Complaint
        Route::resource('complaint', 'SmComplaintController');
        Route::get('download-complaint-document/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/complaint/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });


        // Complaint
        Route::resource('setup-admin', 'SmSetupAdminController');
        Route::get('setup-admin-delete/{id}', 'SmSetupAdminController@destroy');


        // Postal Receive
        Route::resource('postal-receive', 'SmPostalReceiveController');

        Route::get('postal-receive-document/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/postal/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });


        // Postal Dispatch
        Route::resource('postal-dispatch', 'SmPostalDispatchController');
        Route::get('postal-dispatch-document/{file_name}', function ($file_name = null) {

            $file = public_path() . '/uploads/postal/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            } else {
                redirect()->back();
            }
        });

        // Phone Call Log
        Route::resource('phone-call', 'SmPhoneCallLogController');

        // Student Certificate
        Route::resource('student-certificate', 'SmStudentCertificateController');

        // Generate certificate
        Route::get('generate-certificate', ['as' => 'generate_certificate', 'uses' => 'SmStudentCertificateController@generateCertificate']);
        Route::post('generate-certificate', ['as' => 'generate_certificate', 'uses' => 'SmStudentCertificateController@generateCertificateSearch']);
        // print certificate
        Route::get('generate-certificate-print/{s_id}/{c_id}', ['as' => 'student_certificate_generate', 'uses' => 'SmStudentCertificateController@generateCertificateGenerate']);


        // Student ID Card
        Route::resource('student-id-card', 'SmStudentIdCardController');
        Route::get('generate-id-card', ['as' => 'generate_id_card', 'uses' => 'SmStudentIdCardController@generateIdCard']);


        Route::post('generate-id-card-search', ['as' => 'generate_id_card_search', 'uses' => 'SmStudentIdCardController@generateIdCardSearch']);
        Route::get('generate-id-card-search', ['as' => 'generate_id_card_search', 'uses' => 'SmStudentIdCardController@generateIdCard']);
        Route::get('generate-id-card-print/{s_id}/{c_id}', 'SmStudentIdCardController@generateIdCardPrint');


        // Student Module /Student Admission
        Route::get('student-admission', ['as' => 'student_admission', 'uses' => 'SmStudentAdmissionController@admission']);
        Route::get('student-admission-check/{id}', ['as' => 'student_admission_check', 'uses' => 'SmStudentAdmissionController@admissionCheck']);
        Route::get('student-admission-update-check/{val}/{id}', ['as' => 'student_admission_check_update', 'uses' => 'SmStudentAdmissionController@admissionCheckUpdate']);
        Route::post('student-admission-pic', ['as' => 'student_admission_pic', 'uses' => 'SmStudentAdmissionController@admissionPic']);

        // Ajax get vehicle
        Route::get('/academic-year-get-class', 'SmStudentAdmissionController@academicYearGetClass');

        // Ajax get vehicle
        Route::get('/ajaxGetVehicle', 'SmStudentAdmissionController@ajaxGetVehicle');

        // Ajax Section
        Route::get('/ajaxVehicleInfo', 'SmStudentAdmissionController@ajaxVehicleInfo');

        // Ajax Roll No
        Route::get('/ajax-get-roll-id', 'SmStudentAdmissionController@ajaxGetRollId');

        // Ajax Roll exist check
        Route::get('/ajax-get-roll-id-check', 'SmStudentAdmissionController@ajaxGetRollIdCheck');

        // Ajax Section
        Route::get('/ajaxSectionStudent', 'SmStudentAdmissionController@ajaxSectionStudent');

        // Ajax room details
        Route::get('/ajaxRoomDetails', 'SmStudentAdmissionController@ajaxRoomDetails');
        //student store
        Route::post('student-store', ['as' => 'student_store', 'uses' => 'SmStudentAdmissionController@studentStore']);

        //Student details document

        Route::get('delete-document/{id}', ['as' => 'delete_document', 'uses' => 'SmStudentAdmissionController@deleteDocument']);
        Route::post('upload-document', ['as' => 'upload_document', 'uses' => 'SmStudentAdmissionController@uploadDocument']);



        Route::get('download-document/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/student/document/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });





        // Student timeline upload
        Route::post('student-timeline-store', ['as' => 'student_timeline_store', 'uses' => 'SmStudentAdmissionController@studentTimelineStore']);
        //parent
        Route::get('parent-download-timeline-doc/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/student/timeline/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
            return redirect()->back();
        });

        Route::get('delete-timeline/{id}', ['as' => 'delete_timeline', 'uses' => 'SmStudentAdmissionController@deleteTimeline']);


        //student import
        Route::get('import-student', ['as' => 'import_student', 'uses' => 'SmStudentAdmissionController@importStudent']);
        Route::get('download_student_file', ['as' => 'download_student_file', 'uses' => 'SmStudentAdmissionController@downloadStudentFile']);
        Route::post('student-bulk-store', ['as' => 'student_bulk_store', 'uses' => 'SmStudentAdmissionController@studentBulkStore']);

        //Ajax Sibling section
        Route::get('ajaxSectionSibling', 'SmStudentAdmissionController@ajaxSectionSibling');

        //Ajax Sibling info
        Route::get('ajaxSiblingInfo', 'SmStudentAdmissionController@ajaxSiblingInfo');

        //Ajax Sibling info detail
        Route::get('ajaxSiblingInfoDetail', 'SmStudentAdmissionController@ajaxSiblingInfoDetail');

        // student list
        Route::get('student-list', ['as' => 'student_list', 'uses' => 'SmStudentAdmissionController@studentDetails']);
        // student search

        Route::post('student-list-search', 'SmStudentAdmissionController@studentDetailsSearch');

        Route::get('student-list-search', 'SmStudentAdmissionController@studentDetails');

        // student list

        Route::get('student-view/{id}', ['as' => 'student_view', 'uses' => 'SmStudentAdmissionController@studentView']);

        // student delete
        Route::post('student-delete', 'SmStudentAdmissionController@studentDelete');


        // student edit
        Route::get('student-edit/{id}', ['as' => 'student_edit', 'uses' => 'SmStudentAdmissionController@studentEdit']);
        // Student Update
        Route::post('student-update', ['as' => 'student_update', 'uses' => 'SmStudentAdmissionController@studentUpdate']);
        Route::post('student-update-pic/{id}', ['as' => 'student_update_pic', 'uses' => 'SmStudentAdmissionController@studentUpdatePic']);

        // Student Promote search
        Route::get('student-promote', ['as' => 'student_promote', 'uses' => 'SmStudentAdmissionController@studentPromote']);

        Route::get('student-current-search', 'SmStudentAdmissionController@studentPromote');
        Route::post('student-current-search', 'SmStudentAdmissionController@studentCurrentSearch');

        Route::get('student-current-search-custom', 'SmStudentAdmissionController@studentPromoteCustom');
        Route::post('student-current-search-custom', 'SmStudentAdmissionController@studentCurrentSearchCustom');

        Route::get('view-academic-performance/{id}', 'SmStudentAdmissionController@view_academic_performance');


        // // Student Promote Store
        Route::get('student-promote-store', 'SmStudentAdmissionController@studentPromote');
        Route::post('student-promote-store', 'SmStudentAdmissionController@studentPromoteStore');

        // // Student Promote Store Custom
        Route::get('student-promote-store-custom', 'SmStudentAdmissionController@studentPromoteCustom');
        Route::post('student-promote-store-custom', 'SmStudentAdmissionController@studentPromoteCustomStore');

        //Ajax Student Promote Section
        Route::get('ajaxStudentPromoteSection', 'SmStudentAdmissionController@ajaxStudentPromoteSection');
        Route::get('ajax-get-class', 'SmStudentAdmissionController@ajaxGetClass');
        Route::get('SearchMultipleSection', 'SmStudentAdmissionController@SearchMultipleSection');

        //Ajax Student Select
        Route::get('ajaxSelectStudent', 'SmStudentAdmissionController@ajaxSelectStudent');

        Route::get('promote-year/{id?}', 'SmStudentAdmissionController@ajaxPromoteYear');

        // Student Attendance
        Route::get('student-attendance', ['as' => 'student_attendance', 'uses' => 'SmStudentAttendanceController@index']);
        Route::post('student-search', 'SmStudentAttendanceController@studentSearch');
        Route::get('student-search', 'SmStudentAttendanceController@index');

        Route::post('student-attendance-store', 'SmStudentAttendanceController@studentAttendanceStore');
        Route::post('student-attendance-holiday', 'SmStudentAttendanceController@studentAttendanceHoliday');


        Route::get('student-attendance-import', 'SmStudentAttendanceController@studentAttendanceImport');
        Route::get('download-student-attendance-file', 'SmStudentAttendanceController@downloadStudentAtendanceFile');
        Route::post('student-attendance-bulk-store', 'SmStudentAttendanceController@studentAttendanceBulkStore');

        //Student Report
        Route::get('student-report', ['as' => 'student_report', 'uses' => 'SmStudentAdmissionController@studentReport']);
        Route::post('student-report', ['as' => 'student_report', 'uses' => 'SmStudentAdmissionController@studentReportSearch']);


        //guardian report
        Route::get('guardian-report', ['as' => 'guardian_report', 'uses' => 'SmStudentAdmissionController@guardianReport']);
        Route::post('guardian-report-search', ['as' => 'guardian_report_search', 'uses' => 'SmStudentAdmissionController@guardianReportSearch']);
        Route::get('guardian-report-search', ['as' => 'guardian_report_search', 'uses' => 'SmStudentAdmissionController@guardianReport']);

        Route::get('student-history', ['as' => 'student_history', 'uses' => 'SmStudentAdmissionController@studentHistory']);
        Route::post('student-history-search', ['as' => 'student_history_search', 'uses' => 'SmStudentAdmissionController@studentHistorySearch']);
        Route::get('student-history-search', ['as' => 'student_history_search', 'uses' => 'SmStudentAdmissionController@studentHistory']);


        // student login report
        Route::get('student-login-report', ['as' => 'student_login_report', 'uses' => 'SmStudentAdmissionController@studentLoginReport']);
        Route::post('student-login-search', ['as' => 'student_login_search', 'uses' => 'SmStudentAdmissionController@studentLoginSearch']);
        Route::get('student-login-search', ['as' => 'student_login_search', 'uses' => 'SmStudentAdmissionController@studentLoginReport']);

        // student & parent reset password
        Route::post('reset-student-password', 'SmResetPasswordController@resetStudentPassword');


        // Disabled Student
        Route::get('disabled-student', ['as' => 'disabled_student', 'uses' => 'SmStudentAdmissionController@disabledStudent']);

        Route::post('disabled-student', ['as' => 'disabled_student', 'uses' => 'SmStudentAdmissionController@disabledStudentSearch']);
        Route::post('disabled-student-delete', ['as' => 'disable_student_delete', 'uses' => 'SmStudentAdmissionController@disabledStudentDelete']);
        Route::post('enable-student', ['as' => 'enable_student', 'uses' => 'SmStudentAdmissionController@enableStudent']);


        Route::get('student-report-search', 'SmStudentAdmissionController@studentReport');

        Route::get('language-list', 'LanguageController@index');
        Route::get('language-list/{id}', 'LanguageController@show')->name('language_edit');
        Route::post('language-list/update', 'LanguageController@update')->name('language_update');
        Route::post('language-list/store', 'LanguageController@store')->name('language_store');



        // Tabulation Sheet Report
        Route::get('tabulation-sheet-report', ['as' => 'tabulation_sheet_report', 'uses' => 'SmReportController@tabulationSheetReport']);
        Route::post('tabulation-sheet-report', ['as' => 'tabulation_sheet_report', 'uses' => 'SmReportController@tabulationSheetReportSearch']);
        Route::post('tabulation-sheet/print', 'SmReportController@tabulationSheetReportPrint');

        Route::get('optional-subject-setup/delete/{id}', 'SmOptionalSubjectAssignController@optionalSetupDelete')->name('delete_optional_subject');
        Route::get('optional-subject-setup/edit/{id}', 'SmOptionalSubjectAssignController@optionalSetupEdit')->name('class_optional_edit');
        Route::get('optional-subject-setup', 'SmOptionalSubjectAssignController@optionalSetup')->name('class_optional');
        Route::post('optional-subject-setup', 'SmOptionalSubjectAssignController@optionalSetupStore')->name('optional_subject_setup_post');

        // progress card report
        Route::get('progress-card-report', ['as' => 'progress_card_report', 'uses' => 'SmReportController@progressCardReport']);
        Route::post('progress-card-report', ['as' => 'progress_card_report', 'uses' => 'SmReportController@progressCardReportSearch']);


        Route::post('progress-card/print', 'SmReportController@progressCardPrint');


        // staff directory
        Route::get('staff-directory', ['as' => 'staff_directory', 'uses' => 'SmStaffController@staffList']);

        Route::get('search-staff', 'SmStaffController@staffList');

        Route::post('search-staff', ['as' => 'searchStaff', 'uses' => 'SmStaffController@searchStaff']);

        Route::get('add-staff', ['as' => 'addStaff', 'uses' => 'SmStaffController@addStaff']);
        Route::post('staff-store', ['as' => 'staffStore', 'uses' => 'SmStaffController@staffStore']);
        Route::post('staff-pic-store', ['as' => 'staffPicStore', 'uses' => 'SmStaffController@staffPicStore']);


        Route::get('edit-staff/{id}', ['as' => 'editStaff', 'uses' => 'SmStaffController@editStaff']);
        Route::post('update-staff', ['as' => 'staffUpdate', 'uses' => 'SmStaffController@staffUpdate']);
        Route::post('staff-profile-update/{id}', ['as' => 'staffProfileUpdate', 'uses' => 'SmStaffController@staffProfileUpdate']);

        // Route::get('staff-roles', ['as' => 'viewStaff', 'uses' => 'SmStaffController@staffRoles']);
        Route::get('view-staff/{id}', ['as' => 'viewStaff', 'uses' => 'SmStaffController@viewStaff']);
        Route::get('delete-staff-view/{id}', ['as' => 'deleteStaffView', 'uses' => 'SmStaffController@deleteStaffView']);

        Route::get('deleteStaff/{id}', 'SmStaffController@deleteStaff');
        Route::get('staff-disable-enable', 'SmStaffController@staffDisableEnable');

        Route::get('upload-staff-documents/{id}', 'SmStaffController@uploadStaffDocuments');
        Route::post('save_upload_document', 'SmStaffController@saveUploadDocument');
        Route::get('download-staff-document/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/staff/document/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::get('download-staff-joining-letter/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/staff_joining_letter/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::get('download-resume/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/resume/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::get('download-other-document/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/others_documents/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::get('download-staff-timeline-doc/{file_name}', function ($file_name = null) {
            $file = public_path() . '/uploads/staff/timeline/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::get('delete-staff-document-view/{id}', 'SmStaffController@deleteStaffDocumentView');
        Route::get('delete-staff-document/{id}', 'SmStaffController@deleteStaffDocument');

        // staff timeline
        Route::get('add-staff-timeline/{id}', 'SmStaffController@addStaffTimeline');
        Route::post('staff_timeline_store', 'SmStaffController@storeStaffTimeline');
        Route::get('delete-staff-timeline-view/{id}', 'SmStaffController@deleteStaffTimelineView');
        Route::get('delete-staff-timeline/{id}', 'SmStaffController@deleteStaffTimeline');


        //Staff Attendance
        Route::get('staff-attendance', ['as' => 'staff_attendance', 'uses' => 'SmStaffAttendanceController@staffAttendance']);
        Route::post('staff-attendance-search', 'SmStaffAttendanceController@staffAttendanceSearch');
        Route::post('staff-attendance-store', 'SmStaffAttendanceController@staffAttendanceStore');

        Route::get('staff-attendance-report', ['as' => 'staff_attendance_report', 'uses' => 'SmStaffAttendanceController@staffAttendanceReport']);
        Route::post('staff-attendance-report-search', ['as' => 'staff_attendance_report_search', 'uses' => 'SmStaffAttendanceController@staffAttendanceReportSearch']);

        Route::get('staff-attendance/print/{role_id}/{month}/{year}/', 'SmStaffAttendanceController@staffAttendancePrint');


        // Biometric attendance
        Route::post('attendance', 'SmStaffAttendanceController@attendanceData')->name('attendanceData');



        Route::get('staff-attendance-import', 'SmStaffAttendanceController@staffAttendanceImport');
        Route::get('download-staff-attendance-file', 'SmStaffAttendanceController@downloadStaffAttendanceFile');
        Route::post('staff-attendance-bulk-store', 'SmStaffAttendanceController@staffAttendanceBulkStore');

        //payroll
        Route::get('payroll', ['as' => 'payroll', 'uses' => 'SmPayrollController@index']);

        Route::post('payroll', ['as' => 'payroll', 'uses' => 'SmPayrollController@searchStaffPayr']);

        Route::get('generate-Payroll/{id}/{month}/{year}', 'SmPayrollController@generatePayroll');
        Route::post('save-payroll-data', ['as' => 'savePayrollData', 'uses' => 'SmPayrollController@savePayrollData']);

        Route::get('pay-payroll/{id}/{role_id}', 'SmPayrollController@paymentPayroll');
        Route::post('savePayrollPaymentData', ['as' => 'savePayrollPaymentData', 'uses' => 'SmPayrollController@savePayrollPaymentData']);
        Route::get('view-payslip/{id}', 'SmPayrollController@viewPayslip');

        //payroll Report
        Route::get('payroll-report', 'SmPayrollController@payrollReport');
        Route::post('search-payroll-report', ['as' => 'searchPayrollReport', 'uses' => 'SmPayrollController@searchPayrollReport']);
        Route::get('search-payroll-report', 'SmPayrollController@searchPayrollReport');

        //Homework
        Route::get('homework-list', ['as' => 'homework-list', 'uses' => 'SmHomeworkController@homeworkList']);

        Route::post('homework-list', ['as' => 'homework-list', 'uses' => 'SmHomeworkController@searchHomework']);
        Route::get('homework-edit/{id}', ['as' => 'homework_edit', 'uses' => 'SmHomeworkController@homeworkEdit']);
        Route::post('homework-update', ['as' => 'homework_update', 'uses' => 'SmHomeworkController@homeworkUpdate']);
        Route::get('homework-delete/{id}', ['as' => 'homework_delete', 'uses' => 'SmHomeworkController@homeworkDelete']);

        Route::get('add-homeworks', ['as' => 'add-homeworks', 'uses' => 'SmHomeworkController@addHomework']);
        Route::post('save-homework-data', ['as' => 'saveHomeworkData', 'uses' => 'SmHomeworkController@saveHomeworkData']);

        //Route::get('evaluation-homework/{class_id}/{section_id}', 'SmHomeworkController@evaluationHomework');

        Route::get('evaluation-homework/{class_id}/{section_id}/{homework_id}', 'SmHomeworkController@evaluationHomework');
        Route::post('save-homework-evaluation-data', ['as' => 'save-homework-evaluation-data', 'uses' => 'SmHomeworkController@saveHomeworkEvaluationData']);
        Route::get('evaluation-report', 'SmHomeworkController@EvaluationReport');

        Route::get('evaluation-document/{file_name}', function ($file_name = null) {

            $file = public_path() . 'public/uploads/homework/' . $file_name;
            return $file;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::post('search-evaluation', ['as' => 'search-evaluation', 'uses' => 'SmHomeworkController@searchEvaluation']);
        // Route::get('search-evaluation', 'SmHomeworkController@EvaluationReport');
        Route::get('view-evaluation-report/{homework_id}', 'SmHomeworkController@viewEvaluationReport');

        //teacher
        Route::get('upload-content', 'SmTeacherController@uploadContentList');
        Route::post('save-upload-content', 'SmTeacherController@saveUploadContent');
        Route::get('delete-upload-content/{id}', 'SmTeacherController@deleteUploadContent');

        Route::get('download-content-document/{file_name}', function ($file_name = null) {

            $file = public_path() . '/uploads/upload_contents/' . $file_name;
            if (file_exists($file)) {
                return Response::download($file);
            }
        });

        Route::get('assignment-list', 'SmTeacherController@assignmentList');
        Route::get('study-metarial-list', 'SmTeacherController@studyMetarialList');
        Route::get('syllabus-list', 'SmTeacherController@syllabusList');
        Route::get('other-download-list', 'SmTeacherController@otherDownloadList');

        // Communicate
        Route::get('notice-list', 'SmCommunicateController@noticeList');
        Route::get('administrator-notice', 'SmCommunicateController@administratorNotice');
        Route::get('add-notice', 'SmCommunicateController@sendMessage');
        Route::post('save-notice-data', 'SmCommunicateController@saveNoticeData');
        Route::get('edit-notice/{id}', 'SmCommunicateController@editNotice');
        Route::post('update-notice-data', 'SmCommunicateController@updateNoticeData');
        Route::get('delete-notice-view/{id}', 'SmCommunicateController@deleteNoticeView');
        Route::get('send-email-sms-view', 'SmCommunicateController@sendEmailSmsView');
        Route::post('send-email-sms', 'SmCommunicateController@sendEmailSms');
        Route::get('email-sms-log', 'SmCommunicateController@emailSmsLog');
        Route::get('delete-notice/{id}', 'SmCommunicateController@deleteNotice');

        Route::get('studStaffByRole', 'SmCommunicateController@studStaffByRole');


        //Event
        Route::resource('event', 'SmEventController');
        Route::get('delete-event-view/{id}', 'SmEventController@deleteEventView');
        Route::get('delete-event/{id}', 'SmEventController@deleteEvent');

        //Holiday
        Route::resource('holiday', 'SmHolidayController');
        Route::resource('weekend', 'SmWeekendController');
        Route::get('delete-holiday-view/{id}', 'SmHolidayController@deleteHolidayView');
        Route::get('delete-holiday/{id}', 'SmHolidayController@deleteHoliday');

        //Book Category
        Route::resource('book-category-list', 'SmBookCategoryController');
        Route::get('delete-book-category-view/{id}', 'SmBookCategoryController@deleteBookCategoryView');
        Route::get('delete-book-category/{id}', 'SmBookCategoryController@deleteBookCategory');

        // Book
        Route::get('book-list', 'SmBookController@index');
        Route::get('add-book', 'SmBookController@addBook');
        Route::post('save-book-data', 'SmBookController@saveBookData');
        Route::get('edit-book/{id}', 'SmBookController@editBook');
        Route::post('update-book-data/{id}', 'SmBookController@updateBookData');
        Route::get('delete-book-view/{id}', 'SmBookController@deleteBookView');
        Route::get('delete-book/{id}', 'SmBookController@deleteBook');
        Route::get('member-list', 'SmBookController@memberList');
        Route::get('issue-books/{member_type}/{id}', 'SmBookController@issueBooks');
        Route::post('save-issue-book-data', 'SmBookController@saveIssueBookData');
        Route::get('return-book-view/{id}', 'SmBookController@returnBookView');
        Route::get('return-book/{id}', 'SmBookController@returnBook');
        Route::get('all-issed-book', 'SmBookController@allIssuedBook');
        Route::post('search-issued-book', 'SmBookController@searchIssuedBook');
        Route::get('search-issued-book', 'SmBookController@allIssuedBook');


          // Library Subject routes
          Route::get('library-subject', ['as' => 'library_subject', 'uses' => 'SmBookController@subjectList']);
          Route::post('library-subject-store', ['as' => 'library_subject_store', 'uses' => 'SmBookController@store']);
          Route::get('library-subject-edit/{id}', ['as' => 'library_subject_edit', 'uses' => 'SmBookController@edit']);
          Route::post('library-subject-update', ['as' => 'library_subject_update', 'uses' => 'SmBookController@update']);
          Route::get('library-subject-delete/{id}', ['as' => 'library_subject_delete', 'uses' => 'SmBookController@delete']);
        //library member
        Route::resource('library-member', 'SmLibraryMemberController');
        Route::get('cancel-membership/{id}', 'SmLibraryMemberController@cancelMembership');


        // Ajax Subject in dropdown by section change
        Route::get('ajaxSubjectDropdown', 'AcademicController@ajaxSubjectDropdown');
        Route::post('/language-change', 'SmSystemSettingController@ajaxLanguageChange');

        // Route::get('localization/{locale}','SmLocalizationController@index');


        //inventory
        Route::resource('item-category', 'SmItemCategoryController');
        Route::get('delete-item-category-view/{id}', 'SmItemCategoryController@deleteItemCategoryView');
        Route::get('delete-item-category/{id}', 'SmItemCategoryController@deleteItemCategory');
        Route::resource('item-list', 'SmItemController');
        Route::get('delete-item-view/{id}', 'SmItemController@deleteItemView');
        Route::get('delete-item/{id}', 'SmItemController@deleteItem');
        Route::resource('item-store', 'SmItemStoreController');
        Route::get('delete-store-view/{id}', 'SmItemStoreController@deleteStoreView');
        Route::get('delete-store/{id}', 'SmItemStoreController@deleteStore');
        Route::get('item-receive', 'SmItemReceiveController@itemReceive');
        Route::post('get-receive-item', 'SmItemReceiveController@getReceiveItem');
        Route::post('save-item-receive-data', 'SmItemReceiveController@saveItemReceiveData');
        Route::get('item-receive-list', 'SmItemReceiveController@itemReceiveList');
        Route::get('edit-item-receive/{id}', 'SmItemReceiveController@editItemReceive');
        Route::post('update-edit-item-receive-data/{id}', 'SmItemReceiveController@updateItemReceiveData');
        Route::post('delete-receive-item', 'SmItemReceiveController@deleteReceiveItem');
        Route::get('view-item-receive/{id}', 'SmItemReceiveController@viewItemReceive');
        Route::get('add-payment/{id}', 'SmItemReceiveController@itemReceivePayment');
        Route::post('save-item-receive-payment', 'SmItemReceiveController@saveItemReceivePayment');
        Route::get('view-receive-payments/{id}', 'SmItemReceiveController@viewReceivePayments');
        Route::post('delete-receive-payment', 'SmItemReceiveController@deleteReceivePayment');
        Route::get('delete-item-receive-view/{id}', 'SmItemReceiveController@deleteItemReceiveView');
        Route::get('delete-item-receive/{id}', 'SmItemReceiveController@deleteItemReceive');
        Route::get('delete-item-sale-view/{id}', 'SmItemReceiveController@deleteItemSaleView');
        Route::get('delete-item-sale/{id}', 'SmItemReceiveController@deleteItemSale');
        Route::get('cancel-item-receive-view/{id}', 'SmItemReceiveController@cancelItemReceiveView');
        Route::get('cancel-item-receive/{id}', 'SmItemReceiveController@cancelItemReceive');

        // Item Sell in inventory
        Route::get('item-sell-list', 'SmItemSellController@itemSellList');
        Route::get('item-sell', 'SmItemSellController@itemSell');
        Route::post('save-item-sell-data', 'SmItemSellController@saveItemSellData');

        Route::post('check-product-quantity', 'SmItemSellController@checkProductQuantity');
        Route::get('edit-item-sell/{id}', 'SmItemSellController@editItemSell');

        Route::post('update-item-sell-data', 'SmItemSellController@UpdateItemSellData');



        Route::get('item-issue', 'SmItemSellController@itemIssueList');
        Route::post('save-item-issue-data', 'SmItemSellController@saveItemIssueData');
        Route::get('getItemByCategory', 'SmItemSellController@getItemByCategory');
        Route::get('return-item-view/{id}', 'SmItemSellController@returnItemView');
        Route::get('return-item/{id}', 'SmItemSellController@returnItem');

        Route::get('view-item-sell/{id}', 'SmItemSellController@viewItemSell');
        Route::get('view-item-sell-print/{id}', 'SmItemSellController@viewItemSellPrint');

        Route::get('add-payment-sell/{id}', 'SmItemSellController@itemSellPayment');
        Route::post('save-item-sell-payment', 'SmItemSellController@saveItemSellPayment');


        //Supplier
        Route::resource('suppliers', 'SmSupplierController');
        Route::get('delete-supplier-view/{id}', 'SmSupplierController@deleteSupplierView');
        Route::get('delete-supplier/{id}', 'SmSupplierController@deleteSupplier');


        Route::get('view-sell-payments/{id}', 'SmItemSellController@viewSellPayments');


        Route::post('delete-sell-payment', 'SmItemSellController@deleteSellPayment');
        Route::get('cancel-item-sell-view/{id}', 'SmItemSellController@cancelItemSellView');
        Route::get('cancel-item-sell/{id}', 'SmItemSellController@cancelItemSell');


        //library member
        Route::resource('library-member', 'SmLibraryMemberController');
        Route::get('cancel-membership/{id}', 'SmLibraryMemberController@cancelMembership');


        //ajax theme change
        Route::get('theme-style-active', 'SmSystemSettingController@themeStyleActive');
        Route::get('theme-style-rtl', 'SmSystemSettingController@themeStyleRTL');
        Route::get('change-academic-year', 'SmSystemSettingController@sessionChange');

        // Sms Settings
        Route::get('sms-settings', 'SmSystemSettingController@smsSettings');
        Route::post('update-clickatell-data', 'SmSystemSettingController@updateClickatellData');
        Route::post('update-twilio-data', 'SmSystemSettingController@updateTwilioData');
        Route::post('update-msg91-data', 'SmSystemSettingController@updateMsg91Data');
        Route::post('activeSmsService', 'SmSystemSettingController@activeSmsService');

        Route::post('update-textlocal-data', 'SmSystemSettingController@updateTextlocalData');

        Route::post('update-africatalking-data', 'SmSystemSettingController@updateAfricaTalkingData');


        //Language Setting
        Route::get('language-setup/{id}', 'SmSystemSettingController@languageSetup');
        Route::get('language-settings', 'SmSystemSettingController@languageSettings');
        Route::post('language-add', 'SmSystemSettingController@languageAdd');

        Route::get('language-edit/{id}', 'SmSystemSettingController@languageEdit');
        Route::post('language-update', 'SmSystemSettingController@languageUpdate');

        Route::post('language-delete', 'SmSystemSettingController@languageDelete');

        Route::get('get-translation-terms', 'SmSystemSettingController@getTranslationTerms');
        Route::post('translation-term-update', 'SmSystemSettingController@translationTermUpdate');


        //Backup Setting
        Route::post('backup-store', 'SmSystemSettingController@BackupStore');
        Route::get('backup-settings', 'SmSystemSettingController@backupSettings');
        Route::get('get-backup-files/{id}', 'SmSystemSettingController@getfilesBackup');
        Route::get('get-backup-db', 'SmSystemSettingController@getDatabaseBackup');
        Route::get('download-database/{id}', 'SmSystemSettingController@downloadDatabase');
        Route::get('download-files/{id}', 'SmSystemSettingController@downloadFiles');
        Route::get('restore-database/{id}', 'SmSystemSettingController@restoreDatabase');
        Route::get('delete-database/{id}', 'SmSystemSettingController@deleteDatabase')->name('delete_database');

        //Update System
        Route::get('about-system', 'SmSystemSettingController@AboutSystem');


        Route::get('database-upgrade', 'SmSystemSettingController@databaseUpgrade');
        Route::get('update-system', 'SmSystemSettingController@UpdateSystem');
        Route::post('admin/update-system', 'SmSystemSettingController@admin_UpdateSystem');
        Route::any('upgrade-settings', 'SmSystemSettingController@UpgradeSettings');


        //Route::get('sendSms','SmSmsTestController@sendSms');
        //Route::get('sendSmsMsg91','SmSmsTestController@sendSmsMsg91');
        //Route::get('sendSmsClickatell','SmSmsTestController@sendSmsClickatell');

        //Settings
        Route::get('general-settings', 'SmSystemSettingController@generalSettingsView');
        Route::get('update-general-settings', 'SmSystemSettingController@updateGeneralSettings');
        Route::post('update-general-settings-data', 'SmSystemSettingController@updateGeneralSettingsData');
        Route::post('update-school-logo', 'SmSystemSettingController@updateSchoolLogo');

        // payment Method Settings
        Route::get('payment-method-settings', 'SmSystemSettingController@paymentMethodSettings');
        Route::post('update-paypal-data', 'SmSystemSettingController@updatePaypalData');
        Route::post('update-stripe-data', 'SmSystemSettingController@updateStripeData');
        Route::post('update-payumoney-data', 'SmSystemSettingController@updatePayumoneyData');
        Route::post('active-payment-gateway', 'SmSystemSettingController@activePaymentGateway');

        //Email Settings
        Route::get('email-settings', 'SmSystemSettingController@emailSettings');
        Route::post('update-email-settings-data', 'SmSystemSettingController@updateEmailSettingsData');


        Route::post('send-test-mail', 'SmSystemSettingController@sendTestMail');

        // payment Method Settings
        // Route::get('payment-method-settings', 'SmSystemSettingController@paymentMethodSettings');
       
        Route::post('is-active-payment', 'SmSystemSettingController@isActivePayment');
        //Route::get('stripeTest', 'SmSmsTestController@stripeTest');
        //Route::post('stripe_post', 'SmSmsTestController@stripePost');

        //Collect fees By Online Payment Gateway(Paypal)
        Route::get('collect-fees-gateway/{amount}/{student_id}/{type}', 'SmCollectFeesByPaymentGateway@collectFeesByGateway');
        Route::post('payByPaypal', 'SmCollectFeesByPaymentGateway@payByPaypal');
        Route::get('paypal-return-status', 'SmCollectFeesByPaymentGateway@getPaymentStatus');

        //Collect fees By Online Payment Gateway(Stripe)
        Route::get('collect-fees-stripe/{amount}/{student_id}/{type}', 'SmCollectFeesByPaymentGateway@collectFeesStripe');
        Route::post('collect-fees-stripe-strore', 'SmCollectFeesByPaymentGateway@stripeStore');

        // To Do list

        //Route::get('stripeTest', 'SmSmsTestController@stripeTest');
        //Route::post('stripe_post', 'SmSmsTestController@stripePost');


        // background setting
        Route::get('background-setting', 'SmBackgroundController@index');
        Route::post('background-settings-update', 'SmBackgroundController@backgroundSettingsUpdate');
        Route::post('background-settings-store', 'SmBackgroundController@backgroundSettingsStore');
        Route::get('background-setting-delete/{id}', 'SmBackgroundController@backgroundSettingsDelete');
        Route::get('background_setting-status/{id}', 'SmBackgroundController@backgroundSettingsStatus');

        //color theme change
        Route::get('color-style', 'SmBackgroundController@colorTheme');
        Route::get('make-default-theme/{id}', 'SmBackgroundController@colorThemeSet');


        Route::get('custom-result-setting', 'CustomResultSettingController@index');
        Route::get('custom-result-setting/edit/{id}', 'CustomResultSettingController@edit');
        Route::DELETE('custom-result-setting/{id}', 'CustomResultSettingController@delete');
        Route::put('custom-result-setting/update/{id}', 'CustomResultSettingController@update');
        Route::post('custom-result-setting/store', 'CustomResultSettingController@store');

        //Custom Result
        Route::get('custom-merit-list', 'CustomResultSettingController@meritListReportIndex');
        Route::get('custom-merit-list/print/{class}/{section}', 'CustomResultSettingController@meritListReportPrint');
        Route::post('custom-merit-list', 'CustomResultSettingController@meritListReport');

        Route::get('custom-progress-card', 'CustomResultSettingController@progressCardReportIndex');
        Route::post('custom-progress-card', 'CustomResultSettingController@progressCardReport');
        Route::post('custom-progress-card/print', 'CustomResultSettingController@progressCardReportPrint');



        // login access control
        Route::get('login-access-control', 'SmLoginAccessControlController@loginAccessControl');
        Route::post('login-access-control', 'SmLoginAccessControlController@searchUser');
        Route::get('login-access-permission', 'SmLoginAccessControlController@loginAccessPermission');
        Route::get('login-password-reset', 'SmLoginAccessControlController@loginPasswordDefault');

        Route::get('button-disable-enable', 'SmSystemSettingController@buttonDisableEnable');

        Route::get('manage-adons', 'SmAddOnsController@ManageAddOns');
        Route::get('manage-adons-delete/{name}', 'SmAddOnsController@ManageAddOns')->name('deleteModule');
        Route::get('manage-adons-enable/{name}', 'SmAddOnsController@moduleAddOnsEnable')->name('moduleAddOnsEnable');
        Route::get('manage-adons-disable/{name}', 'SmAddOnsController@moduleAddOnsDisable')->name('moduleAddOnsDisable');

        Route::post('manage-adons-validation', 'SmAddOnsController@ManageAddOnsValidation')->name('ManageAddOnsValidation');
        Route::get('ModuleRefresh', 'SmAddOnsController@ModuleRefresh')->name('ModuleRefresh');
        Route::get('view-as-superadmin', 'SmSystemSettingController@viewAsSuperadmin')->name('viewAsSuperadmin');



        Route::get('/sms-template', 'SmSystemSettingController@SmsTemplate');
        Route::post('/sms-template/{id}', 'SmSystemSettingController@SmsTemplateStore');

        Route::get('/sms-template-new', 'SmSystemSettingController@SmsTemplateNew');
        Route::post('/sms-template-new', 'SmSystemSettingController@SmsTemplateNewStore');
    });
});
 Route::post('update-payment-gateway', 'SmSystemSettingController@updatePaymentGateway');
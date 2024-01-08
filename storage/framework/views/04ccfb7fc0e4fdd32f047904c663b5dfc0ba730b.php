
<?php $__env->startSection('mainContent'); ?>
<?php  $setting = App\SmGeneralSettings::find(1);  if(!empty($setting->currency_symbol)){ $currency = $setting->currency_symbol; }else{ $currency = '$'; }   ?> 

<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1><?php echo app('translator')->get('lang.transaction_report'); ?></h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->get('lang.dashboard'); ?></a>
                <a href="#"><?php echo app('translator')->get('lang.reports'); ?></a>
                <a href="#"><?php echo app('translator')->get('lang.transaction_report'); ?></a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area up_admin_visitor">
    <div class="container-fluid p-0">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="main-title">
                        <h3 class="mb-30"><?php echo app('translator')->get('lang.select_criteria'); ?> </h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <?php if(session()->has('message-success') != ""): ?>
                        <?php if(session()->has('message-success')): ?>
                        <div class="alert alert-success">
                            <?php echo e(session()->get('message-success')); ?>

                        </div>
                        <?php endif; ?>
                    <?php endif; ?>
                    <div class="white-box">
                        <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'transaction_report_search', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'id' => 'search_student'])); ?>

                            <div class="row">
                                <input type="hidden" name="url" id="url" value="<?php echo e(URL::to('/')); ?>">
                                <div class="col-lg-6 mt-30-md col-md-6">
                                    <div class="no-gutters input-right-icon">
                                        <div class="col">
                                            <div class="input-effect">
                                                <input class="primary-input date form-control<?php echo e($errors->has('date_from') ? ' is-invalid' : ''); ?>" id="startDate" type="text"
                                                     name="date_from" value="<?php echo e(date('m/d/Y')); ?>" readonly>
                                                    <label><?php echo app('translator')->get('lang.date_from'); ?></label>
                                                    <span class="focus-border"></span>
                                                <?php if($errors->has('date_from')): ?>
                                                <span class="invalid-feedback" role="alert">
                                                    <strong><?php echo e($errors->first('date_from')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <button class="" type="button">
                                                <i class="ti-calendar" id="start-date-icon"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 mt-30-md col-md-6">
                                    <div class="no-gutters input-right-icon">
                                        <div class="col">
                                            <div class="input-effect">
                                                <input class="primary-input date form-control<?php echo e($errors->has('date_to') ? ' is-invalid' : ''); ?>" id="startDate" type="text"
                                                     name="date_to" value="<?php echo e(date('m/d/Y')); ?>" readonly>
                                                    <label><?php echo app('translator')->get('lang.date_to'); ?></label>
                                                    <span class="focus-border"></span>
                                                <?php if($errors->has('date_to')): ?>
                                                <span class="invalid-feedback" role="alert">
                                                    <strong><?php echo e($errors->first('date_to')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <button class="" type="button">
                                                <i class="ti-calendar" id="start-date-icon"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 mt-20 text-right">
                                    <button type="submit" class="primary-btn small fix-gr-bg">
                                        <span class="ti-search pr-2"></span>
                                        <?php echo app('translator')->get('lang.search'); ?>
                                    </button>
                                </div>
                            </div>
                        <?php echo e(Form::close()); ?>

                    </div>
                </div>
            </div>
                        
            <?php if(isset($fees_payments)): ?>

            <div class="row mt-40">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 no-gutters">
                            <div class="main-title">
                                <h3 class="mb-0"><?php echo app('translator')->get('lang.fees_collection_details'); ?></h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">

                            <table id="table_id_al" class="display school-table" cellspacing="0" width="100%">

                                <thead>
                                    <tr>
                                        <th><?php echo app('translator')->get('lang.payment'); ?> <?php echo app('translator')->get('lang.id'); ?></th>
                                        <th><?php echo app('translator')->get('lang.date'); ?></th>
                                        <th><?php echo app('translator')->get('lang.name'); ?></th>
                                        <th><?php echo app('translator')->get('lang.class'); ?></th>
                                        <th><?php echo app('translator')->get('lang.fees_type'); ?></th>
                                        <th><?php echo app('translator')->get('lang.mode'); ?></th>
                                        <th><?php echo app('translator')->get('lang.amount'); ?> (<?php echo e($currency); ?>)</th>
                                        <th><?php echo app('translator')->get('lang.discount'); ?> (<?php echo e($currency); ?>)</th>
                                        <th><?php echo app('translator')->get('lang.fine'); ?> (<?php echo e($currency); ?>)</th>
                                        <th><?php echo app('translator')->get('lang.total'); ?> (<?php echo e($currency); ?>)</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                        $grand_amount = 0;
                                        $grand_total = 0;
                                        $grand_discount = 0;
                                        $grand_fine = 0;
                                        $total = 0;
                                    ?>
                                    <?php $__currentLoopData = $fees_payments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $students): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fees_payment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php $total = 0; ?>
                                        <tr>
                                            <td><?php echo e($fees_payment->fees_type_id.'/'.$fees_payment->id); ?></td>
                                            <td  data-sort="<?php echo e(strtotime($fees_payment->payment_date)); ?>" >
                                                <?php echo e($fees_payment->payment_date != ""? App\SmGeneralSettings::DateConvater($fees_payment->payment_date):''); ?>


                                            </td>
                                            <td><?php echo e($fees_payment->studentInfo !=""?$fees_payment->studentInfo->full_name:""); ?></td>
                                            <td>
                                                <?php if($fees_payment->studentInfo!="" && $fees_payment->studentInfo->className!=""): ?>
                                                <?php echo e($fees_payment->studentInfo->className->class_name); ?>

                                                <?php endif; ?>
                                            </td>
                                            <td><?php echo e($fees_payment->feesType!=""?$fees_payment->feesType->name:""); ?></td>
                                            <td>
                                                <?php if($fees_payment->payment_mode == 'C'): ?>
                                                    <?php echo e('Cash'); ?>

                                                <?php elseif($fees_payment->payment_mode == 'Cq'): ?>
                                                    <?php echo e('Cheque'); ?>

                                                <?php else: ?>
                                                    <?php echo e('DD'); ?>

                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <?php
                                                    $total =  $total + $fees_payment->amount;
                                                    $grand_amount =  $grand_amount + $fees_payment->amount;
                                                    echo $fees_payment->amount;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                    $total =  $total + $fees_payment->discount_amount;
                                                    $grand_discount =  $grand_discount + $fees_payment->discount_amount;
                                                    echo $fees_payment->discount_amount;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                    $total =  $total + $fees_payment->fine;
                                                    $grand_fine =  $grand_fine + $fees_payment->fine;
                                                    echo $fees_payment->fine;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                    $grand_total =  $grand_total + $total;
                                                    echo $total;
                                                ?>
                                            </td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                                <tfoot>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><?php echo app('translator')->get('lang.grand_total'); ?> </th>
                                    <th><?php echo e($grand_amount); ?></th>
                                    <th><?php echo e($grand_discount); ?></th>
                                    
                                    <th><?php echo e($grand_fine); ?></th>
                                    <th><?php echo e($grand_total); ?></th>
                                </tfoot>
                            </table>
                        </div>
                    </div>

                    
                </div>
            </div>

            <?php endif; ?>


            <?php if(isset($add_incomes)): ?>


            <div class="row mt-40">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 no-gutters">
                            <div class="main-title">
                                <h3 class="mb-0"><?php echo app('translator')->get('lang.income'); ?> <?php echo app('translator')->get('lang.result'); ?></h3>
                            </div>
                        </div>
                    </div>
                    <!-- </div> -->
                    <div class="row">
                        <div class="col-lg-12">
                            <table id="table_id" class="display school-table" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo app('translator')->get('lang.name'); ?></th>
                                        <th><?php echo app('translator')->get('lang.income_Head'); ?></th>
                                        <th><?php echo app('translator')->get('lang.payment_method'); ?></th>
                                        <th><?php echo app('translator')->get('lang.date'); ?></th>
                                        <th><?php echo app('translator')->get('lang.amount'); ?>(<?php echo e($currency); ?>)</th>
                                    </tr>
                                </thead>
                                <?php $total_income = 0; ?>
                                <tbody>
                                    <?php $__currentLoopData = $add_incomes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $add_income): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php $total_income = $total_income + $add_income->amount; ?>
                                    <tr>
                                        <td><?php echo e($add_income->name); ?></td>
                                        <td><?php echo e($add_income->ACHead!=""?$add_income->ACHead->head:""); ?></td>
                                        <td><?php echo e($add_income->paymentMethod!=""?$add_income->paymentMethod->method:""); ?></td>
                                        <td>
                                           
                                            <?php echo e($add_income->date != ""? App\SmGeneralSettings::DateConvater($add_income->date):''); ?>


                                        </td>
                                        <td><?php echo e(number_format($add_income->amount, 2)); ?></td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th><?php echo app('translator')->get('lang.grand_total'); ?></th>
                                        <th></th>
                                        <th><?php echo e(number_format($total_income, 2)); ?></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        <?php endif; ?>


        <?php if(isset($add_expenses)): ?>


            <div class="row mt-40">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 no-gutters">
                            <div class="main-title">
                                <h3 class="mb-0"><?php echo app('translator')->get('lang.expense'); ?> <?php echo app('translator')->get('lang.result'); ?></h3>
                            </div>
                        </div>
                    </div>

                
                    <!-- </div> -->
                    <div class="row">
                        <div class="col-lg-12">
                            <table id="table_id" class="display school-table" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo app('translator')->get('lang.name'); ?></th>
                                        <th><?php echo app('translator')->get('lang.expense'); ?> <?php echo app('translator')->get('lang.head'); ?></th>
                                        <th><?php echo app('translator')->get('lang.payment_method'); ?></th>
                                        <th><?php echo app('translator')->get('lang.date'); ?></th>
                                        <th><?php echo app('translator')->get('lang.amount'); ?>(<?php echo e($currency); ?>)</th>
                                    </tr>
                                </thead>
                                <?php $total_expense = 0;?>
                                <tbody>
                                    <?php $__currentLoopData = $add_expenses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $add_expense): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php $total_expense = $total_expense + $add_expense->amount; ?>
                                    <tr>
                                        <td><?php echo e($add_expense->name); ?></td>
                                        <td><?php echo e($add_expense->ACHead!=""?$add_expense->ACHead->head:""); ?></td>
                                        <td><?php echo e($add_expense->paymentMethod!=""?$add_expense->paymentMethod->method:""); ?></td>
                                        <td>
                                            
                                        <?php echo e($add_expense->date != ""? App\SmGeneralSettings::DateConvater($add_expense->date):''); ?>


                                        </td>
                                        <td><?php echo e(number_format($add_expense->amount, 2)); ?></td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th><?php echo app('translator')->get('lang.grand_total'); ?></th>
                                        <th></th>
                                        <th><?php echo e(number_format($total_expense, 2)); ?></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

<?php endif; ?>


    </div>
</section>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp\www\Schoolmanag\resources\views/backEnd/feesCollection/transaction_report.blade.php ENDPATH**/ ?>
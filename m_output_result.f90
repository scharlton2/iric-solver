!**********************************************************************
!
!   計算結果出力モジュール
!
!**********************************************************************
    module m_output_result    
    
    use m_const
    use m_global
    
    contains
        
!======================================================================
!   計算結果の出力ルーチン
!======================================================================
    subroutine output_result(htime)
    
    real(8) :: htime
    
    
    call cg_iric_write_sol_time_f(htime, ier)
    
    
    call cg_iric_write_sol_baseiterative_real_f('Discharge(m3s-1)', qq, ier)
    
    call cg_iric_write_sol_gridcoord2d_f(xx,yy,ier)
    call cg_iric_write_sol_cell_real_f("Elevation(m)", zb, ier)
    
    call cg_iric_write_sol_real_f("VX(ms-1)x", vx,ier)
    call cg_iric_write_sol_real_f("VY(ms-1)y", vy,ier)
    
    call cg_iric_write_sol_cell_real_f("Depth(m)", hs,ier)
    call cg_iric_write_sol_cell_real_f("WaterSurface(m)", hh, ier)
    

    end subroutine
    
    end module
function r_zcb = term_fun_lucas78(bet,up,P,T)
v_zcb = bet* (P*up);
p_zcb = v_zcb./up;
r_zcb = 1./p_zcb; 

    for i=2:T
        v_zcb(:,i) = bet* (P*v_zcb(:,i-1));
        p_zcb(:,i) = v_zcb(:,i)./up;
        r_zcb(:,i) = (1./p_zcb(:,i)).^(1/i);
    end
end